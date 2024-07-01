// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Mon Dec 24 16:17:15 2018
//
package main

import "fmt"

func pow100(n int) int {
	if n == 0 {
		return 1
	}
	return 100 * pow100(n-1)
}

func main() {
	var D, N int
	fmt.Scan(&D, &N)

	if N == 100 {
		N++
	}

	fmt.Println(N * pow100(D))
}
