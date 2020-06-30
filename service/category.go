package service

import (
	"gintest/model"
)

func GetCategoryList () ([]* model.Category,error)  {
	var categorys [] * model.Category
	err := model.DB.Find(&categorys).Error
	return categorys,err
}

func CreateCategory() (interface{})  {
	user := model.Category{Name:"张三"}
	return model.DB.Create(&user)
}
