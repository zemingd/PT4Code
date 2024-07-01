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

	t[0] = 0
	x[0] = 0
	y[0] = 0

	for i := 1; i <= n; i++ {
		fmt.Scan(&t[i], &x[i], &y[i])
	}

	flag := true
	for i := 0; i < n; i++ {
		dift := float64(t[i+1] - t[i])
		difx := float64(x[i+1] - x[i])
		dify := float64(y[i+1] - y[i])
		d := math.Abs(difx) + math.Abs(dify)
		if int(d) % 2 != int(dift) % 2 || d > dift {
			flag = false
		}
	}
	if flag {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
