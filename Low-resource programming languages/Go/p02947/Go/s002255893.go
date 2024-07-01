package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, r int
	var s string
	fmt.Scan(&N)
	m := map[string]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&s)
		m[StrSort(s)]++
	}
	for _, v := range m {
		if v < 2 {
			continue
		}
		r += Combination(v, 2)
	}
	fmt.Println(r)
}

func StrSort(s string) string {
	a := make([]string, len(s))
	for i, v := range s {
		a[i] = string(v)
	}
	sort.Sort(sort.StringSlice(a))
	r := ""
	for i := 0; i < len(s); i++ {
		r += a[i]
	}
	return r
}

func Factorial(n int) int {
	return Permutation(n, n-1)
}

func Permutation(n, k int) int {
	if k > n {
		return 0
	}
	r := 1
	for i := n; i > n-k; i-- {
		r *= i
	}
	return r
}

func Combination(n, k int) int {
	return Permutation(n, k) / Factorial(k)
}