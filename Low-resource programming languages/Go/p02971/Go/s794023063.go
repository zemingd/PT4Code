// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Sat Jul 20 21:12:29 2019
//
package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]int, n)
	m := map[int]int{}
	for i := range arr {
		fmt.Scan(&arr[i])
		m[arr[i]]++
	}

	var nums []int
	for k := range m {
		nums = append(nums, k)
	}
	sort.Ints(nums)
	max := nums[len(nums)-1]
	for i := range arr {
		if arr[i] != max {
			fmt.Println(max)
		} else {
			if m[arr[i]] > 1 {
				fmt.Println(max)
			} else {
				fmt.Println(nums[len(nums)-2])
			}
		}
	}
}
