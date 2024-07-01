///
// File:  b.go
// Author: ymiyamoto
//
// Created on Sat Jun 16 23:17:04 2018
//
package main

import "fmt"

var D, N int

func main() {
	fmt.Scan(&D, &N)

	ans := 1
	for i := 0; i < D; i++ {
		ans *= 100
	}

	if N == 100 {
		fmt.Println(ans*N + ans)
	} else {
		fmt.Println(ans * N)
	}
}
