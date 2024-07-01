// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Dec  1 15:43:49 2018
//
package main

import "fmt"

var n int

func max(xs []int, exception int) (int, int) {
	count := 0
	val := 0

	for v, c := range xs {
		if v != exception && count < c {
			val = v
			count = c
		}
	}

	return val, count
}

func main() {
	fmt.Scan(&n)

	count1 := make([]int, 1e5+1)
	count2 := make([]int, 1e5+1)

	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		if i%2 == 0 {
			count1[v]++
		} else {
			count2[v]++
		}
	}

	val1, c1 := max(count1, 0)
	_, c2 := max(count2, val1)

	fmt.Println(n - c1 - c2)
}
