// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun Dec  2 21:01:25 2018
//
package main

import (
	"fmt"
	"strconv"
)

var s string

func abs(n int) int {
	if n > 0 {
		return n
	}
	return -n
}
func main() {
	fmt.Scan(&s)

	min := 10000
	for i := 0; i < len(s)-2; i++ {
		val, _ := strconv.Atoi(s[i : i+3])
		diff := abs(val - 753)
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}
