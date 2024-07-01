package main

import (
	"fmt"
)

func main() {
	var S string
	var weather = [4]string{"Sunny", "Cloudy", "Rainy", "Sunny"}

	fmt.Scanln(&S)

	for i := 0; i < len(weather)-1; i++ {
		if S == weather[i] {
			fmt.Println(weather[i+1])
		}
	}
}
