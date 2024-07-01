// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sun Jan 27 14:51:26 2019
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var K int
	fmt.Scan(&s, &K)

	bytes := make([]byte, 26)
	for i := range bytes {
		bytes[i] = 'a' + byte(i)
	}

	substrings := make([]string, 0)
	for _, b := range bytes {
		for i := range s {
			if s[i] == b {
				for j := 1; i+j <= len(s) && j <= 5; j++ {
					substrings = append(substrings, string(s[i:i+j]))
				}
			}
		}
	}
	sort.Strings(substrings)

	for i := range substrings {
		valid := true
		for j := i - 1; j >= 0; j-- {
			if substrings[i] == substrings[j] {
				valid = false
			}
		}
		if valid {
			K--
			if K == 0 {
				fmt.Println(substrings[i])
				return
			}
		}
	}
}
