///
// File:  a.go
// Author: ymiyamoto
//
// Created on Sat May 26 22:01:32 2018
//
package main

import (
	"fmt"
)

var A, B int

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	fmt.Scan(&A, &B)
	fmt.Println(max(A+B, max(A-B, A*B)))
}
