// https://qiita.com/drken/items/fd4e5e3630d0f5859067
package main

import (
	"fmt"
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

	possible := func(T []int, X []int, Y []int) bool {
		judge := func(T int, N int) bool {
			if (T - N) >= 0 {
				T -= N
			} else {
				return false
			}
			if T%2 != 0 {
				return false
			}
			return true
		}

		preT := 0
		preX := 0
		preY := 0
		for i := 0; i < N; i++ {
			t := T[i] - preT
			x := X[i] - preX
			y := Y[i] - preY
			if !judge(t, x+y) {
				return false
			}
			preT = t
			preX = x
			preY = y
		}
		return true
	}
	if possible(T, X, Y) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
