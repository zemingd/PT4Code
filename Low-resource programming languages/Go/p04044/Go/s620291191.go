package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	a := make([]string, N)
	for i := range a {
		fmt.Scan(&a[i])
	}
	sort.Strings(a)
	for _, x := range a {
		fmt.Printf("%s", x)
	}
	fmt.Printf("\n")
}
