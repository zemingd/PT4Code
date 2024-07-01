// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Dec 24 16:20:10 2018
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
