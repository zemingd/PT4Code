// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Thu Jan  3 12:22:06 2019
//
package main

import "fmt"

func main() {
	var S string

	fmt.Scan(&S)
	for i := range S {
		if i == 3 {
			fmt.Print(8)
		} else {
			fmt.Print(string(S[i]))
		}
	}
	fmt.Println()
}
