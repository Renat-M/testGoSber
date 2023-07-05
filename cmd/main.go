package main

import (
	"encoding/json"
	"fmt"
	"github.com/gin-gonic/gin"
	_ "github.com/lib/pq"
	"io"
	"log"
	"net/http"
	"sort"
	"testGoSber/config"
	"testGoSber/internal/logger"
	"testGoSber/internal/repository"
	"time"
)

type app struct {
	Config *config.Config
	Repo   *repository.Repo
	Logger *logger.Logger
}

type requestSetHandler struct {
	ReportInfo string `json:"report_info"`
	ModelID    string `json:"model_id"`
}

func (a *app) getHandler(c *gin.Context) {
	value := c.Request.URL.Query()
	reportId := value.Get("report_id")
	if reportId == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error_msg": "Need report id", "report_info": ""})
		return
	}
	reportMsg, err := a.Repo.GetReport(reportId)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error_msg": fmt.Sprintf("%v", err), "report_info": reportMsg})
		return
	}
	c.JSON(http.StatusOK, gin.H{"error_msg": "", "report_info": reportMsg})
}

func (a *app) setHandler(c *gin.Context) {
	dataByte, err := io.ReadAll(c.Request.Body)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error_msg": fmt.Sprintf("readall: %v", err)})
		return
	}
	reqStruct := requestSetHandler{}
	err = json.Unmarshal(dataByte, &reqStruct)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error_msg": fmt.Sprintf("unmarshall: %v", err)})
		return
	}
	err = a.Repo.SetReport(reqStruct.ReportInfo, reqStruct.ModelID)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error_msg": fmt.Sprintf("set report: %v", err)})
		return
	}
	c.JSON(http.StatusOK, gin.H{"error_msg": ""})
}

func (a *app) getObsTimeHandler(c *gin.Context) {
	value := c.Request.URL.Query()
	modelId := value.Get("model_id")
	if modelId == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error_msg": "Need model id", "max_observation_period": ""})
		return
	}
	repSl, err := a.Repo.GetObservationTime(modelId)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error_msg": fmt.Sprintf("observation fail: %v", err), "max_observation_period": ""})
		return
	}
	sort.Slice(repSl, func(i int, j int) bool {
		return repSl[i].Creation_time < repSl[j].Creation_time
	})
	maxTime := float64(0)
	for i := 0; i < len(repSl)-1; i++ {
		time1, err := time.Parse("2006-01-02T15:04:05Z", repSl[i].Creation_time)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error_msg": fmt.Sprintf("observation fail data: %v", err), "max_observation_period": ""})
			return
		}
		time2, err := time.Parse("2006-01-02T15:04:05Z", repSl[i+1].Creation_time)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error_msg": fmt.Sprintf("observation fail data: %v", err), "max_observation_period": ""})
			return
		}
		curTime := time2.Sub(time1).Hours() / 24
		if curTime > maxTime {
			maxTime = curTime
		}
	}
	if len(repSl) == 1 {
		time1, err := time.Parse("2006-01-02T15:04:05Z", repSl[0].Creation_time)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error_msg": fmt.Sprintf("observation fail data: %v", err), "max_observation_period": ""})
			return
		}
		maxTime = time.Now().Sub(time1).Hours() / 24
	}
	c.JSON(http.StatusOK, gin.H{"error_msg": "", "max_observation_period": fmt.Sprintf("%v", int64(maxTime))})
}

func main() {
	a := app{}
	a.Logger = logger.NewLogger()
	var err error
	a.Config, err = config.NewConfig()
	if err != nil {
		log.Fatal(err)
	}
	a.Repo = repository.Ready(a.Config.GetDbStruct())

	r := gin.Default()
	gin.SetMode(gin.ReleaseMode)
	r.Use(func(context *gin.Context) {
		a.Logger.PrintLog(context)
	})
	r.GET("/api/v1/get_report", a.getHandler)
	r.POST("/api/v1/set_report", a.setHandler)
	r.GET("/api/v1/get_observation_time", a.getObsTimeHandler)
	r.Run(":" + a.Config.GetPort())
}
