// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Mon Sep 23 18:52:34 2019
//
package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	dp := make([][]int, n)
	for i := range dp {
		dp[i] = make([]int, n)
	}

	for i := 0; i < n; i++ {
		dp[i][n-1] = 1
		dp[n-1][i] = 1
	}

	for i := n - 2; i >= 0; i-- {
		for j := n - 2; j >= 0; j-- {
			if s[i] == s[j] {
				dp[i][j] = dp[i+1][j+1] + 1
			}
		}
	}
	ans := 0
	for i := range dp {
		for j := range dp[i] {
			ans = max(ans, min(dp[i][j], i-j))
		}
	}
	fmt.Println(ans)
}
