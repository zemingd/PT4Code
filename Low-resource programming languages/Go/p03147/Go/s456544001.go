// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Jan 20 21:07:06 2019
//
package main

import "fmt"

func all0(slice []int) bool {
	for _, a := range slice {
		if a != 0 {
			return false
		}
	}
	return true
}

func main() {
	var N int
	fmt.Scan(&N)
	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	ans := 0
	for i := 0; i < 100; i++ {
		if all0(arr) {
			break
		}

		not0 := false
		for j := range arr {
			if arr[j] == 0 {
				if not0 {
					ans++
				}
				not0 = false
			} else {
				not0 = true
				arr[j]--
			}
		}
		if not0 {
			ans++
		}
	}
	fmt.Println(ans)
}
