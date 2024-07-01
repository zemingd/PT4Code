// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Aug  4 04:37:06 2018
//
package main

import "fmt"

var N int
var arr []int

func main() {
	fmt.Scan(&N)
	arr = make([]int, N)

	count := 0
	for i := range arr {
		fmt.Scan(&arr[i])
		count += arr[i] - 1
	}

	fmt.Println(count)
}
