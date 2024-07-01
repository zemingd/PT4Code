package main

import (
	"fmt"
	"sort"
)

func abs(a int) int {
	if a > 0 {
		return a
	}
	return (-1) * a
}

func main() {
	var a [3]int
	fmt.Scan(&a[0], &a[1], &a[2])
	b := a[:]
	sort.Ints(b)

	fmt.Println(abs(b[0]-b[1]) + abs(b[1]-b[2]))
}
