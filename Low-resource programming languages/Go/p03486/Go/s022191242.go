// Package main provides
//
// File:  b.go
// Author: ymiyamoto
//
// Created on Fri Jan  4 15:34:19 2019
//
package main

import (
	"fmt"
	"sort"
)

func new(s string) []string {
	ss := make([]string, 0)
	for i := range s {
		ss = append(ss, string(s[i]))
	}
	return ss
}

func reverse(s []string) {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ss, tt := new(s), new(t)
	sort.Strings(ss)
	sort.Strings(tt)
	reverse(tt)

	for i := 0; i < len(ss) && i < len(tt); i++ {
		if ss[i] < tt[i] {
			fmt.Println("Yes")
			return
		}
	}

	if len(ss) < len(tt) {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}
