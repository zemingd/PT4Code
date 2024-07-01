// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Dec 17 14:25:18 2018
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	sort.Ints(arr)

	min := 1<<31 - 1
	for i := 0; i+K-1 < len(arr); i++ {
		diff := arr[i+K-1] - arr[i]
		if diff < min {
			min = diff
		}
	}

	fmt.Println(min)
}
