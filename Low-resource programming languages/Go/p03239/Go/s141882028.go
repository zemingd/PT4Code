// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sat Dec  1 12:48:05 2018
//
package main

import "fmt"

var n, t int

func main() {
	fmt.Scan(&n, &t)
	cost := 1001
	min := -1
	for i := 0; i < n; i++ {
		var c, time int
		fmt.Scan(&c, &time)
		if c < cost && time <= t {
			cost = c
			min = i
		}
	}

	if min == -1 {
		fmt.Println("TLE")
		return
	}

	fmt.Println(cost)
}
