package main

import (
	"fmt"
	"sort"
)

// Ary ...
type Ary []string

func (a Ary) Len() int {
	return len(a)
}

func (a Ary) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a Ary) Less(i, j int) bool {
	return a[i] < a[j]
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	var ary Ary
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		ary = append(ary, s)
	}
	// fmt.Printf("n = %d, l = %d, ary = %v\n", n, l, ary)

	sort.Sort(ary)
	// fmt.Printf("sorted ary = %v\n", ary)

	var result string
	for _, a := range ary {
		result += a
	}
	fmt.Println(result)
}
