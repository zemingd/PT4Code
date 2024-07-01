package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	weather := [4]string{"Sunny", "Cloudy", "Rainy", "Sunny"}

	for i:=0; i<len(weather)-1; i++{
		if s == weather[i]{
			fmt.Println(weather[i+1])
		}
	}
}