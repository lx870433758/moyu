package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
)

func Intro(c *gin.Context) {
	topList, _ := service.GetBannerList(2)
	botList, _ := service.GetBannerList(3)

	c.HTML(http.StatusOK, "team/intro.html", gin.H{
		"topList": topList,
		"botList":  botList,
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "Team",
	})
}

func Team(c *gin.Context) {
	list, _ := service.GetTeamLimitList(4)
	c.HTML(http.StatusOK, "team/team.html", gin.H{
		"list": list,
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "Index",
	})
}