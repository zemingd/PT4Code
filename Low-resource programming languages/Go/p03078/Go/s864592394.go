package main

import (
	"sort"
	"fmt"
)

func main() {
	var x,y,z,k int
	fmt.Scan(&x)
	fmt.Scan(&y)
	fmt.Scan(&z)
	fmt.Scan(&k)

	a := make([]int64, x, x)
	b := make([]int64, y, y)
	c := make([]int64, z, z)
	ab := make([]int64, x * y, x*y)

	for i := 0; i < x; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < y; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < z; i++ {
		fmt.Scan(&c[i])
	}
	
	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			ab[j + y * i] = a[i] + b[j]
		}
	}

	sort.Slice(ab, func(i, j int) bool {
		return ab[i] > ab[j]
	})

	var m int
	if x * y < k {
		m = x * y
	} else {
		m = k
	}

	abc := make([]int64, m * z, m * z)

	for i := 0; i < m; i++ {
		for j := 0; j < z; j++ {
			abc[j + z * i] = ab[i] + c[j]
		}
	}

	sort.Slice(abc, func(i, j int) bool {
		return abc[i] > abc[j]
	})

	for i := 0; i < k; i++ {
		fmt.Println(abc[i])
	}
}