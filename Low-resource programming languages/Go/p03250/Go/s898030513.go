// Package main provides
//
// File:  a.go
// Author: ymiyamoto
//
// Created on Sun Dec  2 04:44:44 2018
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	d := make([]int, 3)
	fmt.Scan(&d[0], &d[1], &d[2])
	sort.Ints(d)
	fmt.Println(d[0]*10 + d[1] + d[2])
}
