package service

import (
	"gintest/model"
)

func GetRecruitmentList () ([]* model.Recruitment,error)  {
	var recruitment [] * model.Recruitment
	err := model.DB.Where("status=?",1).Order("sort asc").Find(&recruitment).Error
	return recruitment,err
}


