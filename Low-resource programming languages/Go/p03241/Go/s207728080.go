// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Sat Dec  1 14:35:30 2018
//
package main

import "fmt"

var n, m int

func main() {
	fmt.Scan(&n, &m)

	for i := n; i <= m/2; i++ {
		if m%i == 0 {
			fmt.Println(m / i)
			return
		}
	}
	fmt.Println(1)
}
