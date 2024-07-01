// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Dec 16 19:40:35 2018
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

	fmt.Println((N + K - 1) / K)
}
