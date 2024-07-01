package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	var res = 1
	var r = 0
	for {
		a, b, r = judge(a, b)
		if r == 0 {
			break
		}
		res *= r
	}
	fmt.Println(a * b * res)
}

func judge(a, b int) (int, int, int) {
	var n int
	if a >= b {
		n = b
	} else {
		n = a
	}
	for i := 2; i <= n; i++ {
		if a%i == 0 && b%i == 0 {
			return a / i, b / i, i
		}
	}
	return a, b, 0
}
