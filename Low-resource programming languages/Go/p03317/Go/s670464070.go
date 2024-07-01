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
	b := pos + 1
	a := len(arr) - pos
	fmt.Println(b/(K-1) + a/(K-1))
}