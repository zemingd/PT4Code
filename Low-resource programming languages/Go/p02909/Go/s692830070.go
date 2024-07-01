package main

import "fmt"

func main() {
	var s string
	_, _ = fmt.Scan(&s)
	
	var answer string
	if s == "Rainy" {
		answer = "Sunny"
	} else if s == "Sunny" {
		answer = "Cloudy"
	} else {
		answer = "Rainy"
	}
	
	fmt.Println(answer)
}
