package main

import (
	"fmt"
)

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	var a int
	var s string
	fmt.Scan(&a, &s)
	if a >= 320 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}
