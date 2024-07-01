// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Tue Jan  8 23:51:17 2019
//
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	m := map[int]int{}
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		m[a]++
	}

	ans := 0
	for _, v := range m {
		if v%2 == 1 {
			ans++
		}
	}
	fmt.Println(ans)
}
