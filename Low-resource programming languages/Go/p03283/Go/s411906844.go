// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Fri Dec  7 00:18:18 2018
//
package main

import "fmt"

func main() {
	var N, M, Q int
	fmt.Scan(&N, &M, &Q)
	graph := make([][]int, N+1)
	for i := range graph {
		graph[i] = make([]int, N+1)
	}

	for i := 0; i < M; i++ {
		var L, R int
		fmt.Scan(&L, &R)
		graph[L][R]++
	}

	for i := 0; i < N+1; i++ {
		for j := 0; j < N+1; j++ {
			if j+1 < N+1 {
				graph[i][j+1] += graph[i][j]
			}
		}
	}

	for i := 0; i < Q; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		ans := 0
		for j := l; j <= r; j++ {
			if 0 < l-1 {
				ans += graph[j][r] - graph[j][l-1]
			} else {
				ans += graph[j][r]
			}
		}

		fmt.Println(ans)
	}
}
