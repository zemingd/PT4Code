package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	strings := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&strings[i])
	}
	sort.Sort(sort.StringSlice(strings))
	var s string = ""
	for i := 0; i < n; i++ {
		s = s + strings[i]
	}
	fmt.Println(s)
}