package model

func (ConfigTeam) TableName() string {
	return "td_config_team"
}

type ConfigTeam struct {
	Id int `gorm:"column:id"`
	Intro string `gorm:"column:intro"`
	Desc string `gorm:"column:desc"`
	ZM int `gorm:"column:zm"`
	YH int	`gorm:"column:yh"`
	UI int	`gorm:"column:ui"`
	MS int	`gorm:"column:ms"`
	XM int	`gorm:"column:xm"`
	SW int	`gorm:"column:sw"`
	YY int	`gorm:"column:yy"`
	TG int	`gorm:"column:tg"`
}
