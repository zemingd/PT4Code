// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Wed Jan 16 16:24:03 2019
//
package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
		arr[i]--
	}
	visited := make([]bool, N)

	next := 0
	ans := 0
	for next != 1 && !visited[next] {
		visited[next] = true
		next = arr[next]
		ans++
	}

	if next != 1 {
		fmt.Println("-1")
	} else {
		fmt.Println(ans)
	}
}
