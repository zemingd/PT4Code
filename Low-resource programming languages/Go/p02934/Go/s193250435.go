// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Wed Aug 28 19:09:38 2019
//
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	total := 0.0
	for i := 0; i < n; i++ {
		var a float64
		fmt.Scan(&a)
		total += 1 / a
	}
	fmt.Println(1 / total)
}
