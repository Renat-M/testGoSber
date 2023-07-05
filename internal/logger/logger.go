package logger

import (
	"github.com/gin-gonic/gin"
	"log"
)

type Logger struct {
}

func (l *Logger) PrintLog(c *gin.Context) {
	log.Printf("%v, %v", c.ClientIP(), c.Request.URL.String())
}

func NewLogger() *Logger {
	return &Logger{}
}
