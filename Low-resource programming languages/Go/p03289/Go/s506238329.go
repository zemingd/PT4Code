// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Mon Aug  6 00:34:38 2018
//
package main

import (
	"fmt"
	"unicode"
)

var S string

func main() {
	fmt.Scan(&S)

	if S[0] == 'A' {
		for i := 1; i < len(S); i++ {
			if S[i] != 'C' && unicode.IsUpper([]rune(S)[i]) {
				fmt.Println("WA")
				return
			}
		}

		num := 0
		for i := 2; i < len(S)-1; i++ {
			if S[i] == 'C' {
				num++
			}
		}
		if num != 1 {
			fmt.Println("WA")
			return
		}

		fmt.Println("AC")
		return
	}

	fmt.Println("WA")
}
