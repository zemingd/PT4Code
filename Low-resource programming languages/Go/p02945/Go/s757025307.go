package main

import (
	"fmt"
	"sort"
)

// main is ...
func main() {
	var a, b int
	fmt.Scan(&a, &b)

	list := []int{a + b, a - b, a * b}

	sort.Ints(list)

	fmt.Print(list[len(list)-1])
}

