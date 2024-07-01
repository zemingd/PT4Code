// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Dec 16 19:40:35 2018
//
package main

import "fmt"

func find(arr []int, val int) int {
	for i, a := range arr {
		if val == a {
			return i
		}
	}
	return -1
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	index := find(arr, 1)

	fmt.Println((index+K-2)/(K-1) + (len(arr)-index-1+K-2)/(K-1))
}
