// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Sat Aug  4 04:27:17 2018
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	arr := make([]int, 3)
	fmt.Scan(&arr[0], &arr[1], &arr[2])
	sort.Ints(arr)

	ans := 0
	for i := range arr {
		if i+1 < len(arr) {
			ans += arr[i+1] - arr[i]
		}
	}
	fmt.Println(ans)
}
