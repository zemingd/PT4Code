// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Dec 23 23:56:53 2018
//
package main

import "fmt"

type problem struct {
	n, c int
}

func min(a, b int) int {
	if b < a {
		return b
	}

	return a
}

func main() {
	var D, G int
	fmt.Scan(&D, &G)

	problems := make([]problem, D)
	for i := range problems {
		fmt.Scan(&problems[i].n, &problems[i].c)
	}

	ans := 1 << 31
	for i := 0; i < (1 << uint8(len(problems))); i++ {
		solved, points := 0, 0
		for j := 0; j < len(problems); j++ {
			if i&(1<<uint8(j)) != 0 {
				solved += problems[j].n
				points += problems[j].c + (j+1)*100*problems[j].n
			}
		}

		if points >= G {
			ans = min(ans, solved)
			continue
		}

		for j := 0; j < len(problems); j++ {
			if i&(1<<uint8(j)) == 0 {
				rem := G - points
				num := rem / ((j + 1) * 100)
				if num < problems[j].n {
					ans = min(ans, solved+num)
				}
			}
		}

	}

	fmt.Println(ans)
}
