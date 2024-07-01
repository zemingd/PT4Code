// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Fri Aug 16 09:54:04 2019
//
package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]string, n)
	for i := range arr {
		fmt.Scan(&arr[i])
	}

	nums := map[string]int{}
	ans := 0
	for i := len(arr) - 1; i >= 0; i-- {
		fields := strings.Split(arr[i], "")
		sort.Strings(fields)
		str := strings.Join(fields, "")
		ans += nums[str]
		nums[str]++
	}
	fmt.Println(ans)
}
