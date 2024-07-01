package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, t int
	fmt.Scan(&n, &t)

	s := make([]int, n)
	r := make([]int, 0, n * n)
	for i := range s {
		fmt.Scan(&s[i])
	}

	j := len(s) - 1
	for i := range s {
		for k := i; k < j; k++ {
			r = append(r, s[i] * s[k+1])
		}
	}
	sort.Ints(r)
	fmt.Println(r[t-1])
}