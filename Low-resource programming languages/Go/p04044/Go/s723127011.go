package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	s := make([]string, n)
	for i, _ := range s {
		fmt.Scan(&s[i])
	}
	sort.Strings(s)
	var res string
	for _, t := range s {
		res += t
	}

	fmt.Println(res)
}
