// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Jan  7 00:29:36 2019
//
package main

import "fmt"

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	indexT := -1
	for i := len(S) - len(T); i >= 0; i-- {
		invalid := false
		for j := range T {
			if S[i+j] != T[j] && S[i+j] != '?' {
				invalid = true
			}
		}
		if invalid {
			continue
		}
		indexT = i
		break
	}

	if indexT == -1 {
		fmt.Println("UNRESTORABLE")
		return
	}

	for _, c := range S[:indexT] + T + S[indexT+len(T):] {
		if c == '?' {
			fmt.Print("a")
		} else {
			fmt.Print(string(c))
		}
	}
	fmt.Println()
}
