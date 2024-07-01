// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Jan 20 19:50:05 2019
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	m := map[int]int{}
	for i := 0; i < N; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		m[a] += b
	}

	arr := make([]int, 0)
	for k := range m {
		arr = append(arr, k)
	}
	sort.Ints(arr)

	for _, k := range arr {
		if K-m[k] <= 0 {
			fmt.Println(k)
			break
		}
		K -= m[k]
	}
}
