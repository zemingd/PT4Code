package main

import (
	"fmt"
	"sort"
)

func main() {
	a := make([]int, 3)
	for i := range a {
		fmt.Scan(&a[i])
	}
	sort.Ints(a)

	fmt.Println(abs(a[0]-a[1]) + abs(a[1]-a[2]))
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}