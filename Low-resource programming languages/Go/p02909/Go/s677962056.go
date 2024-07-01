package main

import (
	"fmt"
)

func main() {

	var S string
	fmt.Scanf("%s", &S)

	if S == "Sunny" {
		fmt.Println("Cloudy")
	} else if S == "Cloudy" {
		fmt.Println("Rainy")
	} else {
		fmt.Println("Sunny")
	}
}
