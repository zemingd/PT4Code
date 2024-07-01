// Package main provides
//
// File:  d.go
// Author: ymiyamoto
//
// Created on Sun Dec 23 23:09:07 2018
//
package main

import "fmt"

func main() {
	var N, M, Q int
	fmt.Scan(&N, &M, &Q)

	cities := make([][]int, N)
	for i := range cities {
		cities[i] = make([]int, N)
	}

	for i := 0; i < M; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		cities[l-1][r-1]++
	}

	for i := range cities {
		for j := range cities[i] {
			if j+1 < len(cities[i]) {
				cities[i][j+1] += cities[i][j]
			}
		}
	}

	for i := 0; i < Q; i++ {
		var p, q int
		fmt.Scan(&p, &q)
		p--
		q--

		ans := 0
		for j := p; j <= q; j++ {
			if j < 0 {
				continue
			}

			var from int
			if p-1 > 0 {
				from = cities[j][p-1]
			}
			ans += cities[j][q] - from
		}
		fmt.Println(ans)
	}
}
