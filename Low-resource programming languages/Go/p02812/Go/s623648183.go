// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sat Feb  8 14:34:23 2020
//
package main

import "fmt"

const MOD = 1e9 + 7

var N int
var S string

func main() {
	fmt.Scan(&N, &S)
	ans := 0
	for i := range S {
		if i+2 < len(S) && S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C' {
			ans++
		}
	}
	fmt.Println(ans)
}
