package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	count := 0
	for i := 0; i < n; i++ {
		for j := i + a[i] + 1; j < n; j++ {
			if a[i]+a[j] == int(math.Abs(float64(i)-float64(j))) {
				count++
			}
		}
	}
	fmt.Println(count)
}
