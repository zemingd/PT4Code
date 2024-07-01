// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Mon Dec 17 15:05:49 2018
//
package main

import (
	"fmt"
	"strconv"
)

func num753(length int) []string {
	if length == 0 {
		return []string{""}
	}

	ret := make([]string, 0)
	for _, s := range num753(length - 1) {
		ret = append(ret, []string{"7" + s, "5" + s, "3" + s}...)
	}
	return append(ret, []string{"7", "5", "3"}...)
}

func unique(slice []string) []string {
	m := map[string]bool{}
	for _, s := range slice {
		m[s] = true
	}

	ret := []string{}
	for k := range m {
		ret = append(ret, k)
	}
	return ret
}

func filter(slice []string, f func(s string) bool) []string {
	ret := make([]string, 0)
	for _, s := range slice {
		if f(s) {
			ret = append(ret, s)
		}
	}
	return ret
}

func has753(s string) bool {
	var has7, has5, has3 bool
	for _, c := range s {
		if c == '7' {
			has7 = true
		} else if c == '5' {
			has5 = true
		} else if c == '3' {
			has3 = true
		}
	}
	return has7 && has5 && has3
}

func lessThanOrEuqal(n int) func(s string) bool {
	return func(s string) bool {
		m, _ := strconv.Atoi(s)
		return m <= n
	}
}

func main() {
	var N int
	fmt.Scan(&N)

	nums := num753(len(strconv.Itoa(N)))

	fmt.Println(len(filter(filter(unique(nums), has753), lessThanOrEuqal(N))))
}
