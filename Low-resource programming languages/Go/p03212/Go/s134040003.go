// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun Dec  2 21:04:54 2018
//
package main

import (
	"fmt"
	"strconv"
)

var n int

func is753(num string) bool {
	var has7, has5, has3 bool

	for i := range num {
		switch num[i] {
		case '7':
			has7 = true
		case '5':
			has5 = true
		case '3':
			has3 = true
		}
	}

	return has7 && has5 && has3
}

func num753(n int, arr []string) []string {
	if n == 0 {
		return arr
	}

	var ret []string
	for i := range arr {
		ret = append(ret, arr[i]+"7", arr[i]+"5", arr[i]+"3")
	}

	return append(arr, num753(n-1, ret)...)
}

func main() {
	fmt.Scan(&n)
	l := len(strconv.Itoa(n))

	arr := num753(l-1, []string{"7", "5", "3"})

	ans := 0
	for i := range arr {
		num, _ := strconv.Atoi(arr[i])
		if num <= n && is753(arr[i]) {
			ans++
		}
	}

	fmt.Println(ans)
}
