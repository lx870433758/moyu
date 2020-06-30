package log

import (
	"github.com/gin-gonic/gin"
	"io"
	"os"
)

func InitLog() (*os.File) {

	f, _ := os.Create("./log/access.log")
	// 如果需要将日志同时写入文件和控制台，请使用os.Stdout
	gin.DefaultWriter = io.MultiWriter(f,os.Stdout)
	return f
}