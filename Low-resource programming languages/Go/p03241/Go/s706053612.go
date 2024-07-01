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

func isPrime(a int) bool {
	for i := 2; i*i < a; i++ {
		if a%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	fmt.Scan(&n, &m)

	if isPrime(m) {
		fmt.Println(1)
		return
	}

	for i := n; i <= m/2; i++ {
		if m%i == 0 {
			fmt.Println(m / i)
			return
		}
	}
	fmt.Println(1)
}
