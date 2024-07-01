// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Fri Dec 28 23:24:07 2018
//
package main

import "fmt"

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var N int
	fmt.Scan(&N)

	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	total := 0
	for i, a := range arr {
		if i == 0 {
			total += abs(a - 0)
		} else {
			total += abs(a - arr[i-1])
		}
	}
	total += abs(0 - arr[len(arr)-1])

	for i, a := range arr {
		before := 0
		if i > 0 {
			before = arr[i-1]
		}
		next := 0
		if i+1 < len(arr) {
			next = arr[i+1]
		}
		high := abs(a-before) + abs(next-a)
		low := abs(next - before)
		fmt.Println(total - high + low)
	}
}
