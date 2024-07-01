package main

import (
	"fmt"
)

func max(nums ...int) (m int) {
	m = 0
	for _, x := range nums {
		if x > m {
			m = x
		}
	}
	return
}

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	fmt.Println(max(a, b, c)*9 + a + b + c)
}
