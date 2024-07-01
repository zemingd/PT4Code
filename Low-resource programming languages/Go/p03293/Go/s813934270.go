// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sat Aug  4 04:30:56 2018
//
package main

import "fmt"

var S, T string

func main() {
	fmt.Scan(&S, &T)
	for range S {
		if S == T {
			fmt.Println("Yes")
			return
		}
		S = string(S[len(S)-1]) + S[:len(S)-1]
	}

	fmt.Println("No")
}
