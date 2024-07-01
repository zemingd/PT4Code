package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	a := make([]string, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	sort.Strings(a)
	for _, s := range a {
		fmt.Print(s)
	}
	fmt.Println()
}
