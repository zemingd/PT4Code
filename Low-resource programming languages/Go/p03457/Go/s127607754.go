package main

import (
	"fmt"
)

// go run ./main.go < in

func main() {
	var n int
	fmt.Scan(&n)

	result := "Yes"
	for i := 0; i < n; i++ {
		var time, x, y int
		fmt.Scan(&time, &x, &y)
		if time < x+y || (time%2 != (x+y)%2) {
			result = "No"
			break
		}
	}
	fmt.Println(result)
}