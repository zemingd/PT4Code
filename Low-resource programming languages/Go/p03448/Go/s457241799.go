// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Mon Dec 31 17:10:03 2018
//
package main

import "fmt"

func main() {
	var A, B, C, X int
	_, _ = fmt.Scan(&A, &B, &C, &X)

	ans := 0
	for i := 0; i < A; i++ {
		for j := 0; j < B; j++ {
			for k := 0; k < C; k++ {
				if X == i*500+j*100+k*50 {
					ans++
				}
			}
		}
	}

	fmt.Println(ans)
}
