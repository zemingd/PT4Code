// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Dec 24 15:59:48 2018
//
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	ans := 0
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		ans += a - 1
	}
	fmt.Println(ans)
}
