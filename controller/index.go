package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
	"gintest/model"
)

func Index(c *gin.Context) {
	bannerList, _ := service.GetBannerList(1)
	where := make(map[string]interface{})
	where["status"] = 1
	worksList, _ := service.GetWorksLimitList(where, 10)
	c.HTML(http.StatusOK, "index/index.html", gin.H{
		"bannerList": bannerList,
		"worksList":  worksList,
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "Index",
	})
}
func Liuyan(c *gin.Context) {
	name := c.PostForm("name")
	mobile := c.PostForm("mobile")
	nr := c.PostForm("nr")
	if name == "" || mobile == "" || nr == "" {
		c.JSON(200, gin.H{
			"Status":  0,
			"result":  "error",
			"Message": "添加失败",
		})
		return
	}
	liuyan := model.Liuyan{Name: name,Mobile: mobile, Nr: nr}
	err := service.CreateLiuyan(liuyan)
	if err != nil {
		c.JSON(200, gin.H{
			"Status":  0,
			"result":  "error",
			"Message": "添加失败",
		})
		return
	}
	c.JSON(http.StatusOK, gin.H{
		"Status":  1,
		"result":  "success",
		"Message": "添加成功",
	})
}

func Test(c *gin.Context) {
	service.Create()
	c.String(http.StatusOK, "Welcome Gin Server")
	c.String(http.StatusOK, "Welcome Gin test")
}
