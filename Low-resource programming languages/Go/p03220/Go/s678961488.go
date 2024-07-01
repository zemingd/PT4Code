package main

import (
	"fmt"
)

func main() {
	var n int
	var t, a float64
	fmt.Scan(&n, &t, &a)
	ans := 0
	var min float64 = 99999999
	for i := 1; i <= n; i++ {
		var v float64
		fmt.Scan(&v)
		diff := a - (t - v*0.006)
		if diff < 0.0 {
			diff *= -1.0
		}
		if diff < min {
			min = diff
			ans = i
		}
	}
	fmt.Println(ans)
}
