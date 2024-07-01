// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sun Feb  2 10:55:11 2020
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
