// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Sun Dec  9 21:29:57 2018
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
	fmt.Println(arr[1] - arr[0] + arr[2] - arr[1])
}
