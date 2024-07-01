///
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Apr 14 21:57:39 2018
//
package main

import (
	"fmt"
	"sort"
)

var N int
var X []int

func main() {
	fmt.Scan(&N)

	X = make([]int, N)
	sorted := make([]int, N)
	for i := range X {
		fmt.Scan(&X[i])
		sorted[i] = X[i]
	}

	sort.Ints(sorted)

	for i := 0; i < N; i++ {
		if X[i] < sorted[N/2] {
			fmt.Println(sorted[N/2])
		} else {
			fmt.Println(sorted[N/2-1])
		}
	}
}
