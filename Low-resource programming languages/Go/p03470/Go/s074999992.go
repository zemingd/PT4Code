// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Thu Jan  3 12:23:33 2019
//
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	ds := make([]int, N)

	for i := range ds {
		fmt.Scan(&ds[i])
	}
	ans := 0
	current := 0
	for i := range ds {
		if current < ds[i] {
			current = ds[i]
			ans++
		}
	}
	fmt.Println(ans)
}
