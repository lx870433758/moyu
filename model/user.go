package model

func (User) TableName() string {
	return "user"
}

type User struct {
	Id int `gorm:"column:id"`
	Phone string `gorm:"column:phone"`
	Password string `gorm:"column:password"`
	UserProfileId int `gorm:"column:user_profile_id"`
	Created string	`gorm:"column:created"`
	Changed string	`gorm:"column:changed"`
	Status int8 `gorm:"default:1;column:status"`
}
