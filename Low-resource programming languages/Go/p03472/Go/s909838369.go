// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Wed Feb  6 11:23:19 2019
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
	sort.Ints(bs)
	maxA := as[len(as)-1]

	ans := 0
	for i := len(bs) - 1; i >= 0; i-- {
		if bs[i] > maxA {
			H -= bs[i]
			ans++
			if H <= 0 {
				fmt.Println(ans)
				return
			}
		}
	}

	ans += (H + maxA - 1) / maxA
	fmt.Println(ans)
}
