// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sun Feb  2 11:00:10 2020
//
package main

import "fmt"

var N int
var P []int

func main() {
	fmt.Scan(&N)
	P = make([]int, N)
	for i := range P {
		fmt.Scan(&P[i])
	}

	n := N + 1
	ans := 0
	for _, p := range P {
		if n > p {
			ans++
			n = p
		}
	}
	fmt.Println(ans)
}
