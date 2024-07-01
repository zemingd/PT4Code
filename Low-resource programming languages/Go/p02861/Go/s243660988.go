package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Scanf("%d\n", &N)

	X := make([]int, N)
	Y := make([]int, N)

	for i := 0; i < N; i++ {
		var x, y int
		fmt.Scanf("%d %d\n", &x, &y)
		X[i] = x
		Y[i] = y
	}

	for i := 0; i < N; i++ {
		xo := X[i]
		yo := Y[i]
		x := append(append([]int{}, X[:i]...), X[i+1:]...)
		y := append(append([]int{}, Y[:i]...), Y[i+1:]...)
		dfs(0.0, x, y, xo, yo)
	}
	cnt := 1
	for i := 1; i <= N; i++ {
		cnt *= i
	}
	fmt.Println(sum / float64(cnt))
}

var N int
var sum = 0.0

func dfs(d float64, x, y []int, xo, yo int) {
	if len(x) == 0 {
		sum += d
		return
	}

	for i := range x {
		xi := x[i]
		yi := y[i]
		x := append(append([]int{}, x[:i]...), x[i+1:]...)
		y := append(append([]int{}, y[:i]...), y[i+1:]...)
		dfs(d+math.Sqrt(float64((xo-xi)*(xo-xi)+(yo-yi)*(yo-yi))), x, y, xi, yi)
	}
}
