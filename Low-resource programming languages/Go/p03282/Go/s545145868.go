// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Thu Dec  6 23:54:39 2018
//
package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S string
	var K string
	fmt.Scan(&S, &K)

	if len(K) <= 3 {
		k, _ := strconv.Atoi(K)
		if k <= len(S) {
			all1 := true
			for i := 0; i < k; i++ {
				if S[i] != '1' {
					all1 = false
				}
			}
			if all1 {
				fmt.Println(1)
				return
			}
		}
	}

	for i := 0; i < len(S); i++ {
		if S[i] != '1' {
			fmt.Println(string(S[i]))
			return
		}
	}

	fmt.Println(1)
}
