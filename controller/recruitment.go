package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
	"html/template"
)

func RecruitmentList(c *gin.Context) {
	list, _ := service.GetRecruitmentList()
	for key, value := range list {
		list[key].Html = template.HTML(value.Desc)
	}
	c.HTML(http.StatusOK, "recruitment/lists.html", gin.H{
		"list": list,
		"desc": "",
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "Recruitment",
	})
}
