package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)

	if S == "Sunny" {
		fmt.Println("Cloudy")
	}

	if S == "Cloudy" {
		fmt.Println("Rainy")
	}

	if S == "Rainy" {
		fmt.Println("Sunny")
	}
}