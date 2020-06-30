package model

func (Banner) TableName() string {
	return "td_banner"
}

type Banner struct {
	Id int `gorm:"column:id"`
	Pic string `gorm:"column:pic"`
	Sort int `gorm:"column:sort"`
	Status int8 `gorm:"column:status"`
	Location int8	`gorm:"column:location"`
	Ctime int	`gorm:"column:ctime"`
}
