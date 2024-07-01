package main

import (
	"fmt"
)

func main() {
	var S, ans string
	fmt.Scanf("%s", &S)

	switch S {
	case "Sunny":
		ans = "Cloudy"
	case "Cloudy":
		ans = "Rainy"
	case "Rainy":
		ans = "Sunny"
	}

	fmt.Println(ans)
}