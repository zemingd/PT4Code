// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Wed Jan  9 00:31:48 2019
//
package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	for i, c := range s {
		if i%2 == 0 {
			fmt.Print(string(c))
		}
	}
	fmt.Println()
}
