///
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun May 13 15:37:22 2018
//
package main

import (
	"fmt"
)

var X int

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func pow(a, b int) int {
	if b == 0 {
		return 1
	}
	return a * pow(a, b-1)
}

func main() {
	fmt.Scan(&X)
	if X == 1 {
		fmt.Println(1)
		return
	}

	m := 0
	for i := 2; i <= X; i++ {
		for j := 1; pow(i, j) <= X; j++ {
			m = max(m, pow(i, j))
		}
	}

	fmt.Println(m)
}
