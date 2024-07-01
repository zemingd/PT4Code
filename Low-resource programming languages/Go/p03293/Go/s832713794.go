// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun Dec  9 21:32:52 2018
//
package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	if S == T {
		fmt.Println("Yes")
		return
	}

	for i := 1; i < len(S)-1; i++ {
		if S[i:len(S)]+S[0:i] == T {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
	return
}
