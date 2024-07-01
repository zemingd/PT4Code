package main

import "fmt"

func main() {
	var s string
	var t string
	fmt.Scan(&s)

	switch s {
	case "Sunny":
		t = "Cloudy"
	case "Cloudy":
		t = "Rainy"
	case "Rainy":
		t = "Sunny"
	}

	fmt.Println(t)
}
