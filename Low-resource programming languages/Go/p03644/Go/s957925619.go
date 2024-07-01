// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Thu Jan 10 22:05:32 2019
//
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ans := 0
	for _, n := range []int{1, 2, 4, 8, 16, 32, 64} {
		if n <= N {
			ans = n
		}
	}
	fmt.Println(ans)
}
