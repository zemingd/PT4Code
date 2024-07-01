package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	switch s {
		case "Sunny": fmt.Printf("Cloudy")
		case "Cloudy": fmt.Printf("Rainy")
		case "Rainy": fmt.Printf("Sunny")
	}
}