// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sat Dec  8 00:42:51 2018
//
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	for i := 0; i <= N; i += 4 {
		for j := 0; j <= N; j += 7 {
			if N == i+j {
				fmt.Println("Yes")
				return
			}
		}
	}

	fmt.Println("No")
}
