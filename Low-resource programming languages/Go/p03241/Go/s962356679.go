// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Sat Dec  1 14:35:30 2018
//
package main

import "fmt"

var n, m int

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func main() {
	fmt.Scan(&n, &m)

	maxGCD := 1
	for i := 2; i <= m; i++ {
		min := i
		max := m - (n-1)*min

		if max <= 0 || min > max {
			break
		}

		g := gcd(min, max)
		if maxGCD < g {
			maxGCD = g
		}
	}

	fmt.Println(maxGCD)
}
