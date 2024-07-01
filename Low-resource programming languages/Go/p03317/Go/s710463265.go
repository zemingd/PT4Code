// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Tue Jun 26 02:14:38 2018
//
package main

import (
	"fmt"
	"strconv"
)

var N string

func main() {
	fmt.Scan(&N)

	s := 0
	for i := range N {
		s += int(N[i] - '0')
	}
	n, _ := strconv.Atoi(N)
	if n%s == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
