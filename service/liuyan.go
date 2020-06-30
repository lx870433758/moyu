package service

import (
	"gintest/model"
)


func CreateLiuyan(liuyan model.Liuyan) (interface{})  {
	return model.DB.Create(&liuyan).Error
}
