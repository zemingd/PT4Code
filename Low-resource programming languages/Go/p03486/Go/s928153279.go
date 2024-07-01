// Package main provides
//
// File:  main.go
// Author: ymiyamoto
//
// Created on Fri Feb  8 09:08:27 2019
//
package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	S, T := []string{}, []string{}
	for i := range s {
		S = append(S, string(s[i]))
	}

	for i := range t {
		T = append(T, string(t[i]))
	}

	sort.Strings(S)
	sort.Strings(T)

	for i, j := 0, len(T)-1; i <= j; i, j = i+1, j-1 {
		T[i], T[j] = T[j], T[i]
	}

	if strings.Join(S, "") < strings.Join(T, "") {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
