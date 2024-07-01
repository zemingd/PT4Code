package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int

	fmt.Scan(&a, &b, &c)
	array := []int{a, b, c}
	sort.Ints(array)
	fmt.Printf("%d %d %d\n", array[0], array[1], array[2])
}

