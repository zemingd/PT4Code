// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Mon Jan 28 18:36:27 2019
//
package main

import (
	"fmt"
)

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var N int
	fmt.Scan(&N)

	arr := []int{0}
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		arr = append(arr, a)
	}
	arr = append(arr, 0)

	total := 0
	for i := 1; i < len(arr); i++ {
		total += abs(arr[i] - arr[i-1])
	}

	for i := 1; i < len(arr)-1; i++ {
		fmt.Println(total - (abs(arr[i]-arr[i-1]) + abs(arr[i+1]-arr[i])) + abs(arr[i+1]-arr[i-1]))
	}
}
