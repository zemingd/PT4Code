///
// File:  c.go
// Author: ymiyamoto
//
// Created on Sun May 13 15:43:50 2018
//
package main

import (
	"fmt"
	"sort"
)

var s string
var K int

type strArray []string

func (s strArray) Len() int {
	return len(s)
}

func (s strArray) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s strArray) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func main() {
	fmt.Scan(&s, &K)

	set := map[string]struct{}{}
	for i := range s {
		for k := 1; k <= K && i+k <= len(s); k++ {
			str := s[i : i+k]
			set[str] = struct{}{}
		}
	}

	arr := make(strArray, 0)
	for k, _ := range set {
		arr = append(arr, k)
	}
	sort.Sort(arr)

	fmt.Println(arr[K-1])
}
