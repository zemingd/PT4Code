// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Sun Jan 20 21:00:50 2019
//
package main

import "fmt"

func makeArr(s int) []int {
	arr := []int{s}
	for s != 1 {
		if s%2 == 0 {
			s /= 2
		} else {
			s = 3*s + 1
		}
		arr = append(arr, s)
	}

	arr = append(arr, 4)
	return arr
}

func main() {
	var s int
	fmt.Scan(&s)

	arr := makeArr(s)
	for i := range arr {
		for j := i + 1; j < len(arr); j++ {
			if arr[i] == arr[j] {
				fmt.Println(j + 1)
				return
			}
		}
	}
}
