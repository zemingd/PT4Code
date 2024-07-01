// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Dec  8 18:53:55 2018
//
package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var D, G int

	fmt.Scan(&D, &G)

	arr1 := make([]int, D)
	arr2 := make([]int, D)
	for i := 0; i < D; i++ {
		fmt.Scan(&arr1[i], &arr2[i])
	}

	ans := 1 << 31
	for i := 0; i < (1 << uint8(D)); i++ {
		total := 0
		cnt := 0
		for j := 0; j < D; j++ {
			if i&(1<<uint8(j)) != 0 {
				total += arr1[j]*(j+1)*100 + arr2[j]
				cnt += arr1[j]
			}
		}

		if 0 < G-total {
			for j := D - 1; j >= 0; j-- {
				if i&(1<<uint8(j)) == 0 {
					num := (G - total) / ((j + 1) * 100)
					if num <= arr1[j]-1 {
						cnt += num
						total += num * (j + 1) * 100
					}
					break
				}
			}
		}
		if G <= total {
			ans = min(ans, cnt)
		}
	}

	fmt.Println(ans)
}
