package service

import (
	"gintest/model"
)

func GetWorksList (where map[string]interface{}) ([]* model.Works,error)  {
	var works [] * model.Works
	err := model.DB.Where(where).Order("sort asc").Find(&works).Error
	return works,err
}


func GetWorksLimitList (where map[string]interface{},limit int64) ([]* model.Works,error)  {
	var works [] * model.Works
	err := model.DB.Where(where).Order("sort asc").Limit(limit).Find(&works).Error
	return works,err
}
