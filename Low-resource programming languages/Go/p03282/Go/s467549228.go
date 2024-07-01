// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Thu Dec  6 23:54:39 2018
//
package main

import "fmt"

func main() {
	var S string
	var K string
	fmt.Scan(&S, &K)

	for i := 0; i < len(S); i++ {
		if S[i] != '1' {
			fmt.Println(string(S[i]))
			return
		}
	}

	fmt.Println(1)
}
