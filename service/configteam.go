package service

import (
	"gintest/model"
)

func GetTeamConfig () (model.ConfigTeam)  {
	var configteam model.ConfigTeam
	model.DB.First(&configteam)
	return configteam
}
