package config

import (
	"github.com/spf13/viper"
	"fmt"
)


func InitConfig(){
	fmt.Println("[init config params]......")

	viper.SetConfigType("yaml")
	viper.SetConfigName("application") // name of config file (without extension)
	viper.AddConfigPath("./config")   // 配置文件路径，多次使用可以查找多个目录
	err := viper.ReadInConfig() // Find and read the config file
	if err != nil { // Handle errors reading the config file
		panic(fmt.Errorf("Fatal error config file: %s \n", err))
		return
	}

	fmt.Println("[end init config params]......")
}
