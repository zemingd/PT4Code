// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Fri Dec 28 15:40:52 2018
//
package main

import "fmt"

// max ...
func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)

	for i := A; i < K; i++ {
		fmt.Println(i)
	}
	for i := max(K+A, B-K+1); i <= B; i++ {
		fmt.Println(i)
	}
}
