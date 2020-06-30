package service

import (
	"gintest/model"
)

func GetBannerList (location int8) ([]* model.Banner,error)  {
	var banner [] * model.Banner
	err := model.DB.Where("location = ? and status = ?",location,1).Find(&banner).Error
	return banner,err
}
