///
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun Jan 28 21:03:05 2018
//
package main

import (
	"fmt"
)

func main() {
	var A, B, C, X int
	fmt.Scan(&A, &B, &C, &X)

	count := 0
	for i := 0; i <= A; i++ {
		for j := 0; j <= B; j++ {
			for k := 0; k <= C; k++ {
				if i*500+j*100+k*50 == X {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}
