package main

import (
	"fmt"
	"sort"
)

func main() {
	var X, Y, A, B, C int
	fmt.Scan(&X, &Y, &A, &B, &C)

	ps := make([]int64, A)
	for i := 0; i < A; i++ {
		fmt.Scan(&ps[i])
	}
	sort.Sort(Int64Slice(ps))

	qs := make([]int64, B)
	for i := 0; i < B; i++ {
		fmt.Scan(&qs[i])
	}
	sort.Sort(Int64Slice(qs))

	rs := make([]int64, C)
	for i := 0; i < C; i++ {
		fmt.Scan(&rs[i])
	}
	ns := append(append(ps[:X], qs[:Y]...), rs...)
	sort.Sort(Int64Slice(ns))

	var ret int64
	for i := 0; i < X+Y; i++ {
		ret += ns[i]
	}
	fmt.Println(ret)
}

type Int64Slice []int64

func (s Int64Slice) Len() int {
	return len(s)
}
func (s Int64Slice) Less(i, j int) bool {
	return s[i] > s[j]
}
func (s Int64Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
