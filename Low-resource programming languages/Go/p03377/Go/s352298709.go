// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Fri Dec 28 14:56:46 2018
//
package main

import "fmt"

func main() {
	var A, B, X int
	fmt.Scan(&A, &B, &X)
	if A <= X && X <= A+B {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
