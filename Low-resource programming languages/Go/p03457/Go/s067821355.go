package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	t := make([]int, n+1)
	x := make([]int, n+1)
	y := make([]int, n+1)
	t[0], x[0], y[0] = 0, 0, 0
	for i := 1; i <= n; i++ {
		fmt.Scan(&t[i], &x[i], &y[i])
	}

	for i := 1; i <= n; i++ {
		dt := t[i] - t[i-1]
		dist := int(math.Abs(float64(x[i]-x[i-1])) + math.Abs(float64(y[i]-y[i-1])))
		if dt < dist || dt%2 != dist%2 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
