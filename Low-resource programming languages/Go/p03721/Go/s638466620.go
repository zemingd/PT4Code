// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Jan 19 13:52:07 2019
//
package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	ans := 0
	for i := 0; i < N; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		if ans == 0 && K-b <= 0 {
			ans = a
		} else {
			K -= b
		}
	}
	fmt.Println(ans)
}
