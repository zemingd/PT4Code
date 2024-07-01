package main

import "fmt"

func main() {

	var a string

	fmt.Scan(&a)
	if a == "Sunny" {
		fmt.Println("Cloudy")
	} else if a == "Cloudy" {
		fmt.Println("Rainy")
	} else if a == "Rainy" {
		fmt.Println("Sunny")
	}

}
