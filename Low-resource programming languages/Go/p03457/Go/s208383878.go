package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	T := make([]int, N)
	X := make([]int, N)
	Y := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&T[i], &X[i], &Y[i])
	}

	ans := true
	for i := 0; i < N - 1; i++ {
		dt := float64(T[i + 1] - T[i])
		dist := math.Abs(float64(X[i + 1] - X[i])) + math.Abs(float64(Y[i + 1] - Y[i]))
		if dt < dist {
			ans = false
		} else {
			if int64(dist) % 2 != int64(dt) % 2.0 {
				ans = false
			}
		}
	}
	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}