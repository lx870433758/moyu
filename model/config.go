package model

func (Config) TableName() string {
	return "td_config"
}

type Config struct {
	Id int `gorm:"column:id"`
	CompanyName string `gorm:"column:company_name"`
	Tel string `gorm:"column:tel"`
	Phone string `gorm:"column:phone"`
	Email string `gorm:"column:email"`
	Wx string	`gorm:"column:wx"`
	QQ string	`gorm:"column:qq"`
	Address string	`gorm:"column:address"`
	Lng string	`gorm:"column:lng"`
	Lat string	`gorm:"column:lat"`
	Qrcode string	`gorm:"column:qrcode"`
	Icp string	`gorm:"column:icp"`
}
