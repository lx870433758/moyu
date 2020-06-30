package service

import (
	"gintest/model"
)

func GetTeamLimitList (limit int) ([]* model.Team,error)  {
	where := make(map[string]interface{})
	where["status"] = 1
	var team [] * model.Team
	err := model.DB.Where(where).Order("sort asc").Limit(limit).Find(&team).Error
	return team,err
}
