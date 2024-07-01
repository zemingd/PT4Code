package main

import "fmt"

func main() {
	var in string
	fmt.Scan(&in)
	p := map[string]string{
		"Sunny":  "Cloudy",
		"Cloudy": "Rainy",
		"Rainy":  "Sunny",
	}
	fmt.Println(p[in])
}
