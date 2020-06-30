package model

func (Liuyan) TableName() string {
	return "td_liuyan"
}

type Liuyan struct {
	Id int `gorm:"column:id"`
	Name string `gorm:"column:name" validate:"required"`
	Mobile string `gorm:"column:mobile" validate:"required"`
	Nr string `gorm:"column:nr" validate:"required"`
	Ip string	`gorm:"column:ip"`
	Ctime int	`gorm:"column:ctime"`
}
