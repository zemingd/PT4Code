///
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Mar 25 21:07:39 2018
//
package main

import (
	"fmt"
)

var N int

func diff(a, b int) int {
	if a < b {
		return b - a
	}
	return a - b
}

func main() {
	fmt.Scan(&N)

	arr := make([]int, N+2)

	prev := 0
	total := 0
	for i := 1; i <= N; i++ {
		fmt.Scan(&arr[i])
		total += diff(prev, arr[i])
		prev = arr[i]
	}
	total += diff(0, prev)

	prev = 0
	for i := 1; i <= N; i++ {
		var d int
		if prev < arr[i] {
			if arr[i] < arr[i+1] {
				d = 0
			} else {
				d = -diff(arr[i], arr[i+1]) - diff(prev, arr[i]) + diff(prev, arr[i+1])
			}
		} else {
			if arr[i] < arr[i+1] {
				d = -diff(arr[i], arr[i+1]) - diff(prev, arr[i]) + diff(prev, arr[i+1])
			} else {
				d = 0
			}
		}
		fmt.Println(total + d)
		prev = arr[i]
	}
}
