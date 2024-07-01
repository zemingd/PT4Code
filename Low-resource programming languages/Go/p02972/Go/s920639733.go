// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sat Jul 20 21:17:55 2019
//
package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	arr = append([]int{0}, arr...)

	bs := make([]int, len(arr))
	for i := n; i > 0; i-- {
		num := 0
		for j := i + 1; j <= n; j++ {
			if j%i == 0 {
				num += bs[j]
			}
		}
		if arr[i] != num%2 {
			bs[i] = 1
		}
	}
	ans := make([]int, 0)
	for i := 1; i <= n; i++ {
		if bs[i] == 1 {
			ans = append(ans, i)
		}
	}

	fmt.Println(len(ans))
	for i := range ans {
		if i != 0 {
			fmt.Print(" ")
		}
		fmt.Print(ans[i])
	}
	fmt.Println()
}
