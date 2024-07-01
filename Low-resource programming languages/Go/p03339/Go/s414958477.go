// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Tue Dec 25 03:18:53 2018
//
package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)

	totalE, totalW := 0, 0
	arrE := make([]int, len(S))
	arrW := make([]int, len(S))
	for i := range S {
		if S[i] == 'E' {
			arrE[i]++
			totalE++
		} else {
			arrW[i]++
			totalW++
		}
	}
	for i := range arrE {
		if i+1 < len(arrE) {
			arrE[i+1] += arrE[i]
		}
		if len(arrW)-i-2 >= 0 {
			arrW[len(arrW)-i-2] += arrW[len(arrW)-i-1]
		}
	}

	ans := 1 << 60
	for i := range S {
		ans = min(ans, totalE-arrE[i]+totalW-arrW[i])
	}
	fmt.Println(ans)
}
