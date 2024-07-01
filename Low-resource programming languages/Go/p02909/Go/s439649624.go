package main

import (
	"fmt"
	// "math"
)

func main() {
	var s string
	fmt.Scan(&s)

	// if s == "Sunny" {
	// 	fmt.Println("Cloudy")
	// } else if s == "Cloudy" {
	// 	fmt.Println("Rainy")
	// } else if s == "Rainy" {
	// 	fmt.Println("Sunny")
	// }

	var ans string
	switch s {
	case "Sunny":
		ans = "Cloudy"
	case "Cloudy":
		ans = "Rainy"
	default:
		ans = "Sunny"
	}
	fmt.Println(ans)
}
