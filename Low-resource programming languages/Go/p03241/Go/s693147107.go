// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Wed Dec 19 22:13:45 2018
//
package main

import "fmt"

func isPrime(n int) bool {
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	if N == 1 {
		fmt.Println(M)
		return
	}

	if isPrime(M) {
		fmt.Println(1)
		return
	}

	for i := N; i <= M; i++ {
		if M%i == 0 {
			fmt.Println(M / i)
			return
		}
	}
}
