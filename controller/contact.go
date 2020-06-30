package controller

import (
	"net/http"
	"github.com/gin-gonic/gin"
	_ "gintest/model"
	_ "github.com/jinzhu/gorm"
	"gintest/service"
)

func Contact(c *gin.Context) {
	c.HTML(http.StatusOK, "contact/contact.html", gin.H{
		"config":     service.GetConfig(),
		"configteam": service.GetTeamConfig(),
		"controller": "Contact",
	})
}
