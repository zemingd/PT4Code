// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Fri Jan 25 20:31:18 2019
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
		for a%2 == 0 {
			a /= 2
			ans++
		}
	}
	fmt.Println(ans)
}
