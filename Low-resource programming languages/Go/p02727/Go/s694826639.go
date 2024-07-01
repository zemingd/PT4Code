package main

import (
	"fmt"
	"sort"
)

func main() {
	var X, Y, A, B, C int
	fmt.Scan(&X, &Y, &A, &B, &C)

	ps := make([]int, A)
	for i := 0; i < A; i++ {
		fmt.Scan(&ps[i])
	}
	sort.Sort(sort.IntSlice(ps))

	qs := make([]int, B)
	for i := 0; i < B; i++ {
		fmt.Scan(&qs[i])
	}
	sort.Sort(sort.IntSlice(qs))

	rs := make([]int, C)
	for i := 0; i < C; i++ {
		fmt.Scan(&rs[i])
	}
	//ns := append(append(ps[:X], qs[:Y]...), rs...)
	ns := make([]int, X+Y+C)
	n := 0
	for i := 0; i < X; i++ {
		ns[n] = ps[A-i-1]
		n++
	}
	for i := 0; i < Y; i++ {
		ns[n] = qs[B-i-1]
		n++
	}
	for i := 0; i < C; i++ {
		ns[n] = rs[i]
		n++
	}
	sort.Sort(sort.IntSlice(ns))

	var ret int64
	for i := 0; i < X+Y; i++ {
		ret += int64(ns[X+Y+C-i-1])
	}
	fmt.Println(ret)
}
