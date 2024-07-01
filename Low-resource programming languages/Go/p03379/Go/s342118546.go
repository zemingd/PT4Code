package main

import (
	"fmt"
	"sort"
)

func remove(a []int, n int) (b []int) {
	count := 0
	for _, v := range a {
		if v == n && count == 0 {
			count++
		} else {
			b = append(b, v)
		}
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]int, n)
	for i := range x {
		fmt.Scan(&x[i])
	}

	sortedX := make([]int, n)
	copy(sortedX, x)
	sort.Ints(sortedX)
	m1 := sortedX[n/2-1]
	m2 := sortedX[n/2]

	for _, v := range x {
		if v <= m1 {
			fmt.Println(m2)
		} else {
			fmt.Println(m1)
		}
	}
}
