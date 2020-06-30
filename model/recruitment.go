package model

import "html/template"

func (Recruitment) TableName() string {
	return "td_recruitment"
}

type Recruitment struct {
	Id int `gorm:"column:id"`
	Job string `gorm:"column:job"`
	Desc string `gorm:"column:desc"`
	Sort int `gorm:"column:sort"`
	Status int8	`gorm:"column:status"`
	Html template.HTML
	Ctime int	`gorm:"column:ctime"`
}
