// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Dec  8 21:14:49 2018
//
package main

import (
	"fmt"
	"sort"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	sort.Ints(arr)
	fmt.Println(arr)
	diff := 1000000000
	for i := 0; i+K-1 < N; i++ {
		diff = min(diff, arr[i+K-1]-arr[i])
	}
	fmt.Println(diff)
}
