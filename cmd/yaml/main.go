package main

import (
	"bytes"
	"log"

	"github.com/spf13/viper"
)

func main() {
	viper.SetConfigType("yaml")
	var yamlExample = []byte(`
Hacker: true
name: steve
hobbies:
- skateboarding
- snowboarding
- go
clothing:
- jacket: leather
- trousers: denim
age: 35
eyes: brown
beard: true
`)
	viper.AutomaticEnv()
	if err := viper.ReadConfig(bytes.NewBuffer(yamlExample)); err != nil {
		log.Fatal("some error", err)
	}
	log.Print(viper.GetString("name"))
	viper.Set("name", "demoapp rong")
	log.Print(viper.GetString("name"))
	var appname string = viper.GetString("APIKEY")
	log.Print(appname)
}
