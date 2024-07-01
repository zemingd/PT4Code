package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s == "Sunny" {
		fmt.Print("Cloudy")
	} else if s == "Cloudy" {
		fmt.Print("Rainy")
	} else if s == "Rainy" {
		fmt.Print("Sunny")
	}
}
