// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Wed Dec  5 00:29:19 2018
//
package main

import "fmt"

var a, b int

func main() {
	fmt.Scan(&a, &b)
	for c := 1; c <= 3; c++ {
		if a*b*c%2 == 1 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("no")
}
