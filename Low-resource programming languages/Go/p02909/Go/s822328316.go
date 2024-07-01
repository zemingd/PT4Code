package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	fmt.Println(logic(s))
}

func logic(s string) string {
	switch s {
	case "Sunny":
		return "Cloudy"
	case "Cloudy":
		return "Rainy"
	case "Rainy":
		return "Sunny"
	}
	return ""
}