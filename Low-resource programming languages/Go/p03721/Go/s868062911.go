// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Jan 19 13:52:07 2019
//
package main

import (
	"fmt"
	"sort"
)

type pair struct {
	x, y int
}

type pairs []pair

func (ps pairs) Len() int {
	return len(ps)
}

func (ps pairs) Swap(i, j int) {
	ps[i], ps[j] = ps[j], ps[i]
}

func (ps pairs) Less(i, j int) bool {
	return ps[i].x < ps[j].x
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	ps := make(pairs, N)
	for i := range ps {
		fmt.Scan(&ps[i].x, &ps[i].y)
	}
	sort.Sort(ps)

	for i := range ps {
		a, b := ps[i].x, ps[i].y
		if K-b <= 0 {
			fmt.Println(a)
			return
		}
		K -= b
	}
}
