// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Wed Jan 16 19:08:19 2019
//
package main

import (
	"fmt"
	"strconv"
)

func main() {
	var r, g, b string
	fmt.Scan(&r, &g, &b)
	v, _ := strconv.Atoi(r + g + b)
	if v%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
