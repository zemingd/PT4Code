// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Fri Jan 11 02:29:10 2019
//
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]int, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	b := make([]int, 2*n)

	lindex := len(arr)
	rindex := len(arr) - 1
	for i := range arr {
		if i%2 == 0 {
			b[lindex] = arr[i]
			lindex++
		} else {
			b[rindex] = arr[i]
			rindex--
		}
	}
	if n%2 == 0 {
		for i := rindex + 1; i < lindex; i++ {
			if i != rindex+1 {
				fmt.Print(" ")
			}
			fmt.Print(b[i])
		}

	} else {
		for i := lindex - 1; i > rindex; i-- {
			if i != lindex-1 {
				fmt.Print(" ")
			}
			fmt.Print(b[i])
		}
	}
	fmt.Println()
}
