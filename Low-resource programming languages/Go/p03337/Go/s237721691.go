// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Tue Dec 25 02:31:55 2018
//
package main

import "fmt"

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	fmt.Println(max(A+B, max(A-B, A*B)))
}
