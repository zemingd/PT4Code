package main

import (
	"fmt"
	"math"
)

func main() {
	var X, n, p int
	var P [101]int
	var tmp float64
	tmp = 100000
	ans := 0

	fmt.Scan(&X, &n)

	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		P[p] = 1
	}

	for i := 0; i < 101; i++ {
		if P[i] == 0 {
			if float64(tmp) > math.Abs(float64(X - i)) {
				ans = i
				tmp = math.Abs(float64(X - i))
			}
		}
	}
	fmt.Println(ans)
}