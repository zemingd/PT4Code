// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sat Jul 20 23:34:16 2019
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]int, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	dp := []int{1 << 60}
	for _, a := range arr {
		last := dp[len(dp)-1]
		if last >= a {
			dp = append(dp, a)
		} else {
			i := sort.Search(len(dp), func(i int) bool {
				return a > dp[i]
			})
			dp[i] = a
		}
	}
	fmt.Println(len(dp) - 1)
}
