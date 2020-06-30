package router

import (
	"github.com/gin-gonic/gin"
	"gintest/controller"

)

func InitRouter(router *gin.Engine)  {
	router.GET("/", controller.Index)
	router.POST("/liuyan", controller.Liuyan)
	router.GET("/list-2-1", controller.Intro)
	router.GET("/list-39-1", controller.Team)
	router.GET("/works", controller.Works)
	router.GET("/news/lists", controller.NewsList)
	router.GET("/news/detail", controller.NewsDetail)
	router.GET("/recruitment/lists", controller.RecruitmentList)
	router.GET("/contact", controller.Contact)


	router.GET("/test", controller.Test)
	router.GET("/category_list", controller.CategoryList)
	router.GET("/category_post", controller.CategoryPost)
}
