package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	var s []string
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}
	sort.Strings(s)
	fmt.Println(s)
}
