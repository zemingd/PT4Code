// Package main provides
//
// File:  mian.go
// Author: ymiyamoto
//
// Created on Mon Jan 28 11:31:12 2019
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)

	arr := make([]int, N)
	sorted := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
		sorted[i] = arr[i]
	}
	sort.Ints(sorted)

	left := sorted[len(sorted)/2]
	right := sorted[len(sorted)/2+1]
	for i := range arr {
		if arr[i] <= left {
			fmt.Println(right)
		} else {
			fmt.Println(left)
		}
	}
}
