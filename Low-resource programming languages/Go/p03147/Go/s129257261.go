// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Tue Jan 22 16:31:27 2019
//
package main

import "fmt"

func scanSlice(slice []int) {
	for i := range slice {
		fmt.Scan(&slice[i])
	}
}

func main() {
	var N int
	fmt.Scan(&N)

	slice := make([]int, N)
	scanSlice(slice)

	ans := 0
	for i := 0; i < 100; i++ {
		num := 0
		above0 := false
		for j := range slice {
			if slice[j] > 0 {
				slice[j]--
				above0 = true
			} else {
				if above0 {
					num++
					above0 = false
				}
			}
		}

		if above0 {
			num++
		}
		ans += num
	}

	fmt.Println(ans)
}
