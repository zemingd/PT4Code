// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Thu Dec  6 23:49:33 2018
//
package main

import "fmt"

func divisors(n int) int {
	ans := 0
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			ans++
		}
	}
	return ans
}

func main() {
	var N int
	fmt.Scan(&N)

	count := 0
	for i := 3; i <= N; i += 2 {
		if divisors(i) == 8 {
			count++
		}
	}

	fmt.Println(count)
}
