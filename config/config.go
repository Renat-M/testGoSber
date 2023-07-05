package config

import (
	"fmt"
	"os"
)

type DbParams struct {
	hostDbApp   string
	portDbApp   string
	userDbApp   string
	passDbApp   string
	schemaDbApp string
}

type Config struct {
	portApp  string
	dbparams *DbParams
}

func (c *Config) setPort() error {
	if c.portApp = os.Getenv("PORT_APP"); c.portApp == "" {
		return fmt.Errorf("need PORT_APP env")
	}
	return nil
}

func (c *Config) GetPort() string {
	return c.portApp
}

func (c *Config) setDbInfo() error {
	dbp := DbParams{}
	if dbp.hostDbApp = os.Getenv("HOST_DB_APP"); dbp.hostDbApp == "" {
		return fmt.Errorf("need HOST_DB_APP env")
	}
	if dbp.portDbApp = os.Getenv("PORT_DB_APP"); dbp.portDbApp == "" {
		return fmt.Errorf("need PORT_DB_APP env")
	}
	if dbp.userDbApp = os.Getenv("USER_DB_APP"); dbp.userDbApp == "" {
		return fmt.Errorf("need USER_DB_APP env")
	}
	if dbp.passDbApp = os.Getenv("PASS_DB_APP"); dbp.passDbApp == "" {
		return fmt.Errorf("need PASS_DB_APP env")
	}
	if dbp.schemaDbApp = os.Getenv("SCHEMA_DB_APP"); dbp.schemaDbApp == "" {
		return fmt.Errorf("need SCHEMA_DB_APP env")
	}
	c.dbparams = &dbp
	return nil
}

func NewConfig() (*Config, error) {
	c := Config{}
	if err := c.setPort(); err != nil {
		return nil, err
	}
	if err := c.setDbInfo(); err != nil {
		return nil, err
	}
	return &c, nil
}

func (dbp *DbParams) GetDbInfo() string {
	connStr := fmt.Sprintf("host=%v port=%v user=%v password=%v search_path=%v dbname=postgres sslmode=disable",
		dbp.hostDbApp, dbp.portDbApp, dbp.userDbApp, dbp.passDbApp, dbp.schemaDbApp)
	return connStr
}

func (c *Config) GetDbStruct() *DbParams {
	return c.dbparams
}
