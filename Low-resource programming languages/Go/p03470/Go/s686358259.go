package main

import (
	"fmt"
	"sort"
)

func solve() {
	var N int
	fmt.Scan(&N)

	d := make([]int, N)
	for i, _ := range d {
		fmt.Scan(&d[i])
	}

	sort.Ints(d)
	ans := 1
	for i := 1; i < len(d); i++ {
		if d[i-1] < d[i] {
			ans++
		}
	}
	fmt.Println(ans)
}

func main() {
	solve()
}
