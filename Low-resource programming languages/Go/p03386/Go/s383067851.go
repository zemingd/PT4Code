package main

import (
	"fmt"
	"sort"
)

func main() {
	var A, B, K int
	fmt.Scan(&A)
	fmt.Scan(&B)
	fmt.Scan(&K)

	c := make(map[int]struct{})
	for i := A; i <= A + K; i++ {
		c[i] = struct{}{}
	}
	for i := B - K + 1; i <= B; i++ {
		c[i] = struct{}{}
	}

	as := keys(c)
	sort.Ints(as)
	for _, key := range as {
		fmt.Println(key)
	}
}

func keys(m map[int]struct{}) []int {
	var ks []int

	for k := range m {
		ks = append(ks, k)
	}
	return ks
}