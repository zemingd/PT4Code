package main

import (
	"fmt"
	"sort"
)

func last(ar []int) int {
	return ar[len(ar)-1]
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ar := []int{a + b, a - b, a * b}
	sort.Ints(ar)

	fmt.Println(last(ar))
}