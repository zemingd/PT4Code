package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	weathers := []string{"Sunny", "Cloudy", "Rainy"}
	switch s {
	case weathers[0]:
		fmt.Println(weathers[1])
	case weathers[1]:
		fmt.Println(weathers[2])
	case weathers[2]:
		fmt.Println(weathers[0])
	default:
	}
}