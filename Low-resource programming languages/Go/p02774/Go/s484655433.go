package main

import (
	"fmt"
	"sort"
)

func main() {
	const N = 200000
	n := 0
	k := 0
	fmt.Scan(&n)
	fmt.Scan(&k)

	m := 0
	a := make([]int, n)
	res := make([]int, n*(n-1)/2)

	for i := 0; i < n; i++ {
		x := 0
		fmt.Scan(&x)
		a[i] = x
		for j := 0; j < i; j++ {
			// fmt.Println(m, i, j, x)
			res[m] = x * a[j]
			m++
		}
	}
	// fmt.Println(a)
	// fmt.Println(res)
	sort.Ints(res)
	fmt.Println(res[k-1])
}
