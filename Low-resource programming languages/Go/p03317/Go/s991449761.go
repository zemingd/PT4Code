package main

import (
	"fmt"
)

func main() {
	var N, K, w, pos int

	fmt.Scan(&N, &K)
	arr := make([]int, N)
	min := N + 1
	for i := range arr {
		fmt.Scan(&w)
		if w < min {
			min = w
			pos = i
		}
		arr[i] = w
	}
	b := pos
	a := len(arr) - pos - 1
	var bx, ax int
	if b%(K-1) > 0 {
		bx = b/(K-1) + 1
	} else {
		bx = b / (K - 1)
	}
	if a%(K-1) > 0 {
		ax = a/(K-1) + 1
	} else {
		ax = a / (K - 1)
	}
	fmt.Println(ax + bx)
}
