// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Dec  9 21:38:16 2018
//
package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func main() {
	var N int
	fmt.Scan(&N)
	arr := make([]int, N)

	for i := range arr {
		fmt.Scan(&arr[i])
	}

	l := arr[0]
	for i := 1; i < len(arr); i++ {
		l = lcm(l, arr[i])
	}

	ans := 0
	for i := range arr {
		ans += (l - 1) % arr[i]
	}

	fmt.Println(ans)
}
