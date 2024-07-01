// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Sun Dec  2 04:44:44 2018
//
package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if a > b {
		fmt.Println(a*10 + b + c)
	} else {
		fmt.Println(a + b*10 + c)
	}
}
