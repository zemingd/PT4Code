package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, X int
	fmt.Scan(&N)

	var Xs []int
	for i := 0; i < N; i++ {
		fmt.Scan(&X)
		Xs = append(Xs, X)
	}

	original := make([]int, N)
	copy(original, Xs)
	sort.Ints(Xs)

	left := Xs[N / 2 - 1]
	right := Xs[N / 2]
	for i := 0; i < N; i++ {
		if original[i] <= left {
			fmt.Println(right)
		} else {
			fmt.Println(left)
		}
	}
}