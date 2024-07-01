// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Thu Jan  3 12:42:00 2019
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, H int
	fmt.Scan(&N, &H)

	as := make([]int, N)
	bs := make([]int, N)
	for i := range as {
		fmt.Scan(&as[i], &bs[i])
	}
	sort.Ints(as)
	a := as[len(as)-1]

	ans := 0
	for i := range bs {
		if bs[i] > a {
			H -= bs[i]
			ans++
			if H <= 0 {
				fmt.Println(ans)
				return
			}
		}
	}

	fmt.Println(ans + (H+a-1)/a)
}
