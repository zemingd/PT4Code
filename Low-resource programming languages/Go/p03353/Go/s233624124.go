// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Wed Dec 26 21:29:27 2018
//
package main

import (
	"fmt"
	"sort"
)

type strs []string

func (s strs) Len() int {
	return len(s)
}

func (s strs) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s strs) Less(i, j int) bool {
	return s[i] < s[j]
}

func kthSubstring(s string, K int) string {
	alpha := "abcdefghijklmnopqrstuvwxyz"

	var arr strs
	for i := range alpha {
		for j := range s {
			if s[j] == alpha[i] {
				for k := j + 1; k < len(s) || k <= j+5; k++ {
					arr = append(arr, s[j:k])
				}
			}
		}
	}

	sort.Sort(arr)

	return arr[K-1]
}

func main() {
	var s string
	var K int
	fmt.Scan(&s, &K)

	fmt.Println(kthSubstring(s, K))
}
