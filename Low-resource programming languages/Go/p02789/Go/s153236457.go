// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Tue Jan 28 20:51:39 2020
//
package main

import "fmt"

var N, M int

func main() {
	fmt.Scan(&N, &M)
	if N == M {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
