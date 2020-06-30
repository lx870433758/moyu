package model

func (Team) TableName() string {
	return "td_team"
}

type Team struct {
	Id int `gorm:"column:id"`
	Pic string `gorm:"column:pic"`
	Name string `gorm:"column:name"`
	Job string `gorm:"column:job"`
	Intro string	`gorm:"column:intro"`
	Sort int	`gorm:"column:sort"`
	Status int8	`gorm:"column:status"`
	Ctime int	`gorm:"column:ctime"`
}
