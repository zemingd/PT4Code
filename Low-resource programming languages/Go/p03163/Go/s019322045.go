// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Thu Jan 10 20:08:18 2019
//
package main

import (
	"fmt"
	"sort"
)

type pair struct {
	w, v int
}

func max(slice ...int) int {
	sort.Ints(slice)
	return slice[len(slice)-1]
}

func main() {
	var N, W int
	fmt.Scan(&N, &W)

	arr := make([]pair, N)
	for i := range arr {
		fmt.Scan(&arr[i].w, &arr[i].v)
	}

	dp := make([][]int, N+1)
	for i := range dp {
		dp[i] = make([]int, W+1)
	}
	dp[0][0] = 0

	for i := range arr {
		iw, iv := arr[i].w, arr[i].v
		for w := range dp[i] {
			if w-iw >= 0 {
				dp[i+1][w] = max(dp[i][w], dp[i][w-iw]+iv)
			} else {
				dp[i+1][w] = dp[i][w]
			}
		}
	}

	ans := 0
	for i := range dp[N] {
		if dp[N][i] != 1<<60 {
			ans = max(ans, dp[N][i])
		}
	}

	fmt.Println(ans)
}
