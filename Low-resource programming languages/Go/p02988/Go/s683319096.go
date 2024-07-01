package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, ans int
	fmt.Scan(&n)
	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}
	for i := 1; i < n-1; i++ {
		t := []int{p[i-1], p[i], p[i+1]}
		sort.Ints(t)
		if t[1] == p[i] {
			ans++
		}
	}
	fmt.Println(ans)
}
