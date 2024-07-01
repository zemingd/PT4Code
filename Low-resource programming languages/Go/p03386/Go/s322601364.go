package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	m := make(map[int]int)
	for i := 0; i < k; i++ {
		if j := a + i; j <= b {
			m[j]++
		}
	}
	for i := 0; i < k; i++ {
		if j := b - k + 1 + i; a <= j {
			m[j]++
		}
	}
	var ls []int
	for k := range m {
		ls = append(ls, k)
	}
	sort.Ints(ls)
	for i := 0; i < len(ls); i++ {
		fmt.Println(ls[i])
	}
}
