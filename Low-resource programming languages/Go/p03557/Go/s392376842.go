package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	sum := 0

	for i := 0; i < n; i++ {
		b_i := b[i]
		a_cnt := sort.Search(len(a), func(i int) bool { return a[i] >= b_i })
		c_cnt := n - sort.Search(len(a), func(i int) bool { return c[i] > b_i })
		sum += a_cnt * c_cnt
	}

	fmt.Println(sum)
}
