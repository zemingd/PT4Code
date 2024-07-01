// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Aug  6 00:46:16 2018
//
package main

import "fmt"

type problem struct {
	p, c int
}

var D, G int

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	fmt.Scan(&D, &G)
	ps := make([]problem, D)
	for i := range ps {
		fmt.Scan(&ps[i].p, &ps[i].c)
		ps[i].c += ps[i].p * (i + 1) * 100
	}

	ans := 1 << 30
	for i := 0; i < 1<<uint32(D); i++ {
		score := 0
		solved := 0
		for j := 0; j < D; j++ {
			if i&(1<<uint8(j)) != 0 {
				score += ps[j].c
				solved += ps[j].p
			}
		}

		if G <= score {
			ans = min(ans, solved)
		} else {
			for j := 0; j < D; j++ {
				if i&(1<<uint8(j)) == 0 {
					if G <= score+(ps[j].p-1)*(j+1)*100 {
						ans = min(ans, solved+(G-score+(j+1)*100-1)/((j+1)*100))
					}
				}
			}
		}
	}

	fmt.Println(ans)
}
