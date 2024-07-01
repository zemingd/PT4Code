package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	wm := map[string]string{
		"Sunny": "Cloudy",
		"Cloudy": "Rainy",
		"Rainy": "Sunny",
	}

	fmt.Println(wm[s])
}
