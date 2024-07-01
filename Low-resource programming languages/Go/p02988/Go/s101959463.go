package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	cnt := 0
	for i := 1; i < n-1; i++ {
		list := []int{a[i-1], a[i], a[i+1]}
		sort.Ints(list)
		if a[i] == list[1] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
