// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Tue Jan  1 01:14:02 2019
//
package main

import "fmt"

func main() {
	var A, B, C, X int
	fmt.Scan(&A, &B, &C, &X)

	ans := 0
	for a := 0; a <= A; a++ {
		for b := 0; b <= B; b++ {
			for c := 0; c <= C; c++ {
				if 500*a+100*b+50*c == X {
					ans++
				}
			}
		}
	}

	fmt.Println(ans)
}
