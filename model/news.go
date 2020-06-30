package model

func (News) TableName() string {
	return "td_news"
}

type News struct {
	Id int `gorm:"column:id"`
	Title string `gorm:"column:title"`
	Pic string `gorm:"column:pic"`
	Type int8 `gorm:"column:type"`
	Intro string `gorm:"column:intro"`
	Desc string `gorm:"column:desc"`
	Sort int `gorm:"column:sort"`
	Status int8	`gorm:"column:status"`
	Ctime int	`gorm:"column:ctime"`
}
