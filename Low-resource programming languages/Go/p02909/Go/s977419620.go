package main

import (
	"fmt"
)

func main() {
	var today string
	fmt.Scan(&today)

	switch today {
	case "Sunny":
		fmt.Println("Cloudy")
	case "Cloudy":
		fmt.Println("Rainy")
	case "Rainy":
		fmt.Println("Sunny")
	}
}
