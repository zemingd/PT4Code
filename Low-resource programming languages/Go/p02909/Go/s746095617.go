package main

import "fmt"

var (
	S string
)

func main() {
	fmt.Scan(&S)

	if S == "Sunny" {
		fmt.Println("Cloudy")
	} else if S == "Cloudy" {
		fmt.Println("Rainy")
	} else if S == "Rainy" {
		fmt.Println("Sunny")
	}
}
