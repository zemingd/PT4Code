// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun Jan 20 21:00:50 2019
//
package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	ans := 0
	next := false
	for {
		if s == 4 {
			if next {
				break
			}
			next = true
		}
		if s%2 == 0 {
			s /= 2
		} else {
			s *= 3
			s++
		}
		ans++
	}
	fmt.Println(ans + 1)
}
