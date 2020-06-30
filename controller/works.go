package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
)

func Works(c *gin.Context) {
	types := c.Query("type")
	where := make(map[string]interface{})
	where["status"] = 1
	if types != ""{
		where["type"] = types
	}
	list, _ := service.GetWorksList(where)
	c.HTML(http.StatusOK, "works/works.html", gin.H{
		"list": list,
		"types":types,
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "Works",
	})
}