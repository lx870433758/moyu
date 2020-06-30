package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
)

func CategoryList(c *gin.Context) {
	list, err := service.GetCategoryList()
	if err != nil {
		c.JSON(200, gin.H{
			"Status":  0,
			"Message": "请求失败",
			"Data":    "",
		})
	}
	c.JSON(200, gin.H{
		"Status":  1,
		"Message": "请求成功",
		"Data":    list,
	})
}

func CategoryPost(c *gin.Context) {
	err := service.CreateCategory()
	if err != nil {
		c.JSON(200, gin.H{
			"Status":  0,
			"Message": "添加失败",
		})
	}
	c.JSON(http.StatusOK, gin.H{
		"Status":  0,
		"Message": "添加失败",
	})
}
