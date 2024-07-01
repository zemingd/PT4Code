// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Tue Jan 28 20:52:55 2020
//
package main

import "fmt"

var a, b int

func main() {
	fmt.Scan(&a, &b)
	if a < b {
		for i := 0; i < b; i++ {
			fmt.Print(a)
		}
	} else {
		for i := 0; i < a; i++ {
			fmt.Print(b)
		}
	}
	fmt.Println()
}
