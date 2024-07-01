package main

import (
	"fmt"
	"math"
)

func main() {
	var n, i, j, count int64
	fmt.Scan(&n)
	var a []int64 = make([]int64, n)
	for i = 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i = 0; i < n; i++ {
		for j = i + 1; j < n; j++ {
			if math.Abs(float64(i-j)) == float64(a[i]+a[j]) {
				count++
			}
		}
	}
	fmt.Println(count)
}
