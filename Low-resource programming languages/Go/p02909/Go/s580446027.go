package main

import (
	"fmt"
	// "math"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s == "Sunny" {
		fmt.Println("Cloudy")
	} else if s == "Cloudy" {
		fmt.Println("Rainy")
	} else if s == "Rainy" {
		fmt.Println("Sunny")
	}
}
