// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Wed Dec 26 00:55:01 2018
//
package main

import "fmt"

func pow(a, b int) int {
	if b == 0 {
		return 1
	}
	return a * pow(a, b-1)
}

func main() {
	var X int
	fmt.Scan(&X)

	ans := 1
	for i := 2; i*i <= X; i++ {
		for j := 2; pow(i, j) <= X; j++ {
			if ans < pow(i, j) {
				ans = pow(i, j)
			}
		}
	}

	fmt.Println(ans)
}
