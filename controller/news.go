package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
	"html/template"
)

func NewsList(c *gin.Context) {
	types := c.Query("type")
	where := make(map[string]interface{})
	where["status"] = 1
	if types != ""{
		where["type"] = types
	}
	list, _ := service.GetNewsList(where)
	c.HTML(http.StatusOK, "news/lists.html", gin.H{
		"list": list,
		"types":types,
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "News",
	})
}

func NewsDetail(c *gin.Context) {
	id := c.Query("id")
	detail, _ := service.GetNewsDetail(id)
	last, _ := service.GetNewsLast(id,"id,title")
	next, _ := service.GetNewsNext(id,"id,title")
	c.HTML(http.StatusOK, "news/detail.html", gin.H{
		"detail": detail,
		"last": last,
		"next": next,
		"desc": template.HTML(detail.Desc),
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "News",
	})
}
