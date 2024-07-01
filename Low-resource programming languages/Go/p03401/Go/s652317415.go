package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	now := make([]int, n, n)
	money := make([]int, n, n)

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if i != j {
				money[j] = money[j] + int(math.Abs(float64(now[j]-a[i])))
				now[j] = a[i]
			}
		}
	}
	for i := 0; i < n; i++ {
		money[i] = money[i] + int(math.Abs(float64(now[i])))
	}

	for i := 0; i < n; i++ {
		fmt.Printf("%d\n", money[i])
	}
}
