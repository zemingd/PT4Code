// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sat Dec  8 18:47:44 2018
//
package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	if !(S[0] == 'A' && S[2] == 'C' && S[len(S)-2] == 'C') {
		fmt.Println("WA")
		return
	}

	for i := 0; i < len(S); i++ {
		if i != 0 && i != 2 && i != len(S)-2 {
			if !('a' <= S[i] && S[i] <= 'z') {
				fmt.Println("WA")
				return
			}
		}
	}

	fmt.Println("AC")
}
