package main

import "fmt"

func main() {
	var weather string
	fmt.Scan(&weather)

	if weather == "Sunny" {
		fmt.Println("Cloudy")
	} else if weather == "Cloudy" {
		fmt.Println("Rainy")
	} else if weather == "Rainy" {
		fmt.Println("Sunny")
	}
}
