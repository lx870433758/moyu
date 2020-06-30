package service

import (
	"gintest/model"
)

func GetNewsList(where map[string]interface{}) ([]*model.News, error) {
	var news [] *model.News
	err := model.DB.Where(where).Order("sort asc").Find(&news).Error
	return news, err
}

func GetNewsDetail(id string) (model.News, error) {
	var news model.News
	err := model.DB.Where("id=? and status=?", id, 1).Order("sort asc").First(&news).Error
	return news, err
}

func GetNewsLast(id string, field string) (model.News, error) {
	var news model.News
	err := model.DB.Select(field).Where("id<? and status=?", id, 1).Order("id desc").First(&news).Error
	return news, err
}

func GetNewsNext(id string, field string) (model.News, error) {
	var news model.News
	err := model.DB.Select(field).Where("id>? and status=?", id, 1).First(&news).Error
	return news, err
}
