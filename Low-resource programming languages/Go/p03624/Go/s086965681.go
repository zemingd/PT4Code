// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Wed Jan  9 09:19:53 2019
//
package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	m := map[rune]int{}
	for _, c := range S {
		m[c] = 1
	}

	for _, alpha := range "abcdefghijklmnopqrstuvwxyz" {
		if _, ok := m[alpha]; !ok {
			fmt.Println(string(alpha))
			return
		}
	}
	fmt.Println("None")
}
