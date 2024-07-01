package main

import (
	"fmt"
	"sort"
)

func uniq(a []int) (b []int) {
	m := make(map[int]bool)
	for _, v := range a {
		m[v] = true
	}
	for k := range m {
		b = append(b, k)
	}
	return b
}

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	var l []int
	for i := a; i < b+1 && i < a+k; i++ {
		l = append(l, i)
	}
	for i := b - k + 1; a < i && i < b+1; i++ {
		l = append(l, i)
	}

	uniq := uniq(l)
	sort.Ints(uniq)
	for _, v := range uniq {
		fmt.Println(v)
	}
}
