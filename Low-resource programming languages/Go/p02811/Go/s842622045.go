// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sat Feb  8 14:33:18 2020
//
package main

import "fmt"

const MOD = 1e9 + 7

var K, X int

func main() {
	fmt.Scan(&K, &X)
	if X <= 500*K {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
