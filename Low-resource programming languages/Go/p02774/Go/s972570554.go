package main

import (
	"fmt"
	"sort"
)

func main() {
	n := 0
	k := 0
	a := []int{}
	res := []int{}
	fmt.Scan(&n)
	fmt.Scan(&k)

	for i := 0; i < n; i++ {
		x := 0
		fmt.Scan(&x)
		a = append(a, x)
	}

	for i, x := range a {
		for j := i + 1; j < len(a); j++ {
			res = append(res, x*a[j])
		}
	}

	// fmt.Println(a)
	// fmt.Println(res)
	sort.Ints(res)
	fmt.Println(res[k-1])
}
