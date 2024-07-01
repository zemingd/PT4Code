// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Thu Jan 24 15:48:11 2019
//
package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	minIndex := 1
	min := arr[0]
	for i, a := range arr {
		if a < min {
			min = a
			minIndex = i + 1
		}
	}

	left := (minIndex - 1 + K - 2) / (K - 1)
	right := (N - minIndex + K - 2) / (K - 1)
	fmt.Println(left + right)
}
