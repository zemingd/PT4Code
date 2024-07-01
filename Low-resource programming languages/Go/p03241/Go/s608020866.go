// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Wed Dec 19 22:13:45 2018
//
package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	for i := N; i*i <= M; i++ {
		if M%i == 0 {
			fmt.Println(M / i)
			return
		}
	}
	fmt.Println(1)
}
