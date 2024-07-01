package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	switch s {
	case "Sunny":
		fmt.Println("Cloudy")
	case "Cloudy":
		fmt.Println("Rainy")
	default:
		fmt.Println("Sunny")
	}
}
