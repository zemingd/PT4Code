// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Sat Jan  5 15:32:20 2019
//
package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var ans int
	for i := range s {
		if s[i] == '1' {
			ans++
		}
	}
	fmt.Println(ans)
}
