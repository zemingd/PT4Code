package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	weatherMapping := map[string]string{
		"Sunny": "Cloudy",
		"Cloudy": "Rainy",
		"Rainy":"Sunny",
	}
	fmt.Println(weatherMapping[s])
}