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

	for i := 0; i < Q; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		ans := 0
		for j := l; j <= r; j++ {
			for k := l; k <= r; k++ {
				ans += graph[j][k]
			}
		}
		fmt.Println(ans)
	}
}
