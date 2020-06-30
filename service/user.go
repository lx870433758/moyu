package service

import (
	"gintest/model"
)

func Create()  {
	user := model.User{Phone: "13298092881",Password:"123456",UserProfileId:111,Created:"2020",Changed:"2021",Status:1}
	model.DB.Create(&user)
}
