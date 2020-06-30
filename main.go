package main

import (
	"net/http"
	"time"
	"github.com/gin-gonic/gin"
	"os"
	"os/signal"
	"context"
	"gintest/config"
	"gintest/router"
	"github.com/spf13/viper"
	 _ "github.com/jinzhu/gorm/dialects/mysql"
	"gintest/model"
	"fmt"
	"gintest/log"
	log2 "log"
)

func main() {

	//初始化日志
	log.InitLog()
	//读取配置文件
	config.InitConfig()

	//数据库连接池初始化
	db := model.GetInstance().InitPool()
	if db == nil {
		fmt.Println("init database pool failure...")
	}

	defer db.Close()


	//路由
	routers := gin.New()
	routers.Static("/static", "./static")
	routers.LoadHTMLGlob("view/**/*")
	routers.Use(gin.LoggerWithFormatter(func(param gin.LogFormatterParams) string {
		// your custom format
		return fmt.Sprintf("%s - [%s] \"%s %s %s %d %s \"%s\" %s\"\n",
			param.ClientIP,
			param.TimeStamp.Format(time.RFC1123),
			param.Method,
			param.Path,
			param.Request.Proto,
			param.StatusCode,
			param.Latency,
			param.Request.UserAgent(),
			param.ErrorMessage,
		)
	}))
	routers.Use(gin.Recovery())
	router.InitRouter(routers)


	//http服务
	srv := &http.Server{
		Addr:         ":" + viper.GetString("http.port"),
		Handler:      routers,
		ReadTimeout:  viper.GetDuration("http.readtimeout") * time.Second,
		WriteTimeout: viper.GetDuration("http.writetimeout") * time.Second,
	}

	go func() {
		// service connections
		if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log2.Fatalf("listen: %s\n", err)
		}
	}()


	//平滑启动
	quit := make(chan os.Signal)
	signal.Notify(quit, os.Interrupt)
	<-quit
	log2.Println("Shutdown Server ...")
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := srv.Shutdown(ctx); err != nil {
		log2.Fatal("Server Shutdown:", err)
	}
	log2.Println("Server exiting")
}
