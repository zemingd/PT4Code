// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Wed Aug 28 19:07:36 2019
//
package main

import "fmt"

func main() {
	var a int
	var s string
	fmt.Scan(&a)
	fmt.Scan(&s)

	if a >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}
