package main

import (
	"fmt"
)

func main() {
	var today string
	fmt.Scan(&today)
	if today == "Sunny" {
		fmt.Println("Cloudy")
	} else if today == "Cloudy" {
		fmt.Println("Rainy")
	} else {
		fmt.Println("Sunny")
	}
}