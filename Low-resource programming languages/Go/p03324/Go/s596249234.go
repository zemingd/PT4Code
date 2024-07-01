package main

import (
	"fmt"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)

	if n < 100 {
		fmt.Println(pow(100, d) * n)
	} else {
		fmt.Println(pow(100, d) * 101)
	}
}

func pow(x, y int) int {
	res := 1
	for i := 0; i < y; i++ {
		res *= x
	}
	return res
}