package service

import (
	"gintest/model"
)

func GetConfig () (model.Config)  {
	var config model.Config
	model.DB.First(&config)

	return config
}
