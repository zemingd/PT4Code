// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Tue Jun 26 02:16:19 2018
//
package main

import "fmt"

var N, K int
var arr []int

func main() {
	fmt.Scan(&N, &K)

	var index int
	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
		if arr[i] == 1 {
			index = i
		}
	}

	K--
	left := index
	right := N - 1 - index
	//fmt.Println(K, left, right)
	fmt.Println((left+K-1)/K + (right+K-1)/K)
}
