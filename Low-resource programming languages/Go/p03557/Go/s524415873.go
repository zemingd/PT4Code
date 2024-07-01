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
	for i := range a {
		fmt.Scan(&a[i])
	}
	for i := range b {
		fmt.Scan(&b[i])
	}
	for i := range c {
		fmt.Scan(&c[i])
	}

	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	ans := 0
	for _, v := range a {
		bIndex := sort.Search(n, func(i int) bool { return b[i] > v })
		if bIndex == n {
			continue
		} else {
			for i := bIndex; i < n; i++ {
				cIndex := sort.Search(n, func(j int) bool { return c[j] > b[i] })
				ans += n - cIndex
			}
		}
	}
	fmt.Println(ans)
}
