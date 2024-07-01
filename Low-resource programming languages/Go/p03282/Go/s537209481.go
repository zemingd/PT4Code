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

	for i, c := range S {
		if c != '1' {
			if K-1 < i {
				fmt.Println("1")
				return
			}
			fmt.Println(string(c))
			return
		}
	}
}
