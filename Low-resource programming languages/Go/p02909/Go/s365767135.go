package main

import "fmt"

func main() {
	var s, ans string
	fmt.Scan(&s)
	if s == "Sunny" {
		ans = "Cloudy"
	} else if s == "Cloudy" {
		ans = "Rainy"
	} else {
		ans = "Sunny"
	}
	fmt.Println(ans)
}
