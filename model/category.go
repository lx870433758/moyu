package model

func (Category) TableName() string {
	return "category"
}

type Category struct {
	Id int64 `gorm:"column:id"`
	Name string `gorm:"column:name"`
}
