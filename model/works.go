package model

func (Works) TableName() string {
	return "td_works"
}

type Works struct {
	Id int `gorm:"column:id"`
	Pic string `gorm:"column:pic"`
	Type int8 `gorm:"column:type"`
	Sort int `gorm:"column:sort"`
	Status int8	`gorm:"column:status"`
	Ctime int	`gorm:"column:ctime"`
}
