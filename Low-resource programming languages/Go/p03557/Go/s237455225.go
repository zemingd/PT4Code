package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, r int
	fmt.Scan(&N)
	a := make([]int, N)
	b := make([]int, N)
	c := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.IntSlice(c))
	for i := 0; i < N; i++ {
		ac := 0
		cc := 0
		for j := 0; j < N; j++ {
			if a[j] < b[i] {
				ac++
			} else {
				break
			}
		}
		for j := 0; j < N; j++ {
			if b[i] < c[j] {
				cc++
			}
		}
		r += ac * cc
	}
	fmt.Println(r)

}