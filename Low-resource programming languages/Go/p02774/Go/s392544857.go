package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	n := 2 * int(math.Pow(10, 5))
	k := 0
	a := []int{}
	fmt.Scan(&n)
	fmt.Scan(&k)

	// fmt.Println(n, k)

	for i := 0; i < n; i++ {
		x := 0
		fmt.Scan(&x)
		a = append(a, x)
	}

	// fmt.Println(a)

	result := []int{}
	for i, x := range a {
		for j, y := range a {
			if j >= i {
				continue
			}
			result = append(result, x*y)
		}
	}

	sort.Ints(result)
	// fmt.Println(result)
	fmt.Println(result[k-1])
}
