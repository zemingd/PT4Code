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

	for _, v := range x {
		removedX := remove(sortedX, v)
		fmt.Println(removedX[n/2-1])
	}
}
