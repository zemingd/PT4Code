///
// File:  b.go
// Author: ymiyamoto
//
// Created on Tue Apr  3 00:43:51 2018
//
package main

import (
	"fmt"
)

var K, S int

func main() {
	fmt.Scan(K, S)
	var count int64
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			z := S - (x + y)
			if 0 <= z && z <= K {
				count++
			}
		}
	}
	fmt.Println(count)
}
