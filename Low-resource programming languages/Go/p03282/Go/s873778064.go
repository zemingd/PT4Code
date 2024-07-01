// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Dec 23 00:23:03 2018
//
package main

import "fmt"

func main() {
	var S string
	var K int
	fmt.Scan(&S, &K)

	for i := 0; i < len(S) && i < K; i++ {
		if S[i] != '1' {
			fmt.Println(string(S[i]))
			return
		}
	}
	fmt.Println("1")
}
