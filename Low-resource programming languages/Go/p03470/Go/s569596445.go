package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	s := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}

	ans := exec(n, s)
	fmt.Println(ans)
}

func exec(n int, s []int) int {
	sort.Ints(s)

	bef := 0
	cnt := 0
	for _, n := range s {
		if n > bef {
			cnt++
		}
		bef = n
	}
	return cnt
}
