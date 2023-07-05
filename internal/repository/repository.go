package repository

import (
	"database/sql"
	"testGoSber/config"
)

type Report struct {
	Report_id     int
	Creation_time string
	Report_info   string
	Model_id      int
}

type Repo struct {
	dbp *config.DbParams
}

func Ready(dbp *config.DbParams) *Repo {
	r := Repo{
		dbp: dbp,
	}
	return &r
}

func (r *Repo) GetReport(id string) (string, error) {
	connStr := r.dbp.GetDbInfo()
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		return "", err
	}
	defer db.Close()
	rows, err := db.Query("select * from reports where report_id = " + id)
	if err != nil {
		return "", err
	}
	defer rows.Close()
	rep := Report{}
	rows.Next()
	err = rows.Scan(&rep.Report_id, &rep.Creation_time, &rep.Report_info, &rep.Model_id)
	if err != nil {
		return "", err
	}
	return rep.Report_info, nil
}

func (r *Repo) SetReport(rep_info, model_id string) error {
	connStr := r.dbp.GetDbInfo()
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		return err
	}
	defer db.Close()
	//queryStr := fmt.Sprintf("INSERT INTO reports (report_info, model_id) VALUES (%v, %v)", rep_info, model_id)
	_, err = db.Exec("INSERT INTO reports (report_info, model_id) VALUES ($1, $2)", rep_info, model_id)
	if err != nil {
		return err
	}
	return nil
}

func (r *Repo) GetObservationTime(id string) ([]Report, error) {
	connStr := r.dbp.GetDbInfo()
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		return nil, err
	}
	defer db.Close()
	rows, err := db.Query("select creation_date from reports where model_id = " + id)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	reps := []Report{}
	for rows.Next() {
		rep := Report{}
		err = rows.Scan(&rep.Creation_time)
		if err != nil {
			return nil, err
		}
		reps = append(reps, rep)
	}
	return reps, nil
}
