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

type strings []string

func (s strings) Len() int {
	return len(s)
}

func (s strings) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s strings) Less(i, j int) bool {
	return s[i] < s[j]
}

func New(s string) strings {
	var ss strings
	for i := range s {
		ss = append(ss, string(s[i]))
	}
	return ss
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ss, tt := New(s), New(t)
	sort.Sort(ss)
	sort.Sort(tt)

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
