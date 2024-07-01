package main

import (
	"fmt"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	sa := make([]string, len(s))
	for i, v := range s {
		sa[i] = string(v)
	}
	ta := make([]string, len(t))
	for i, v := range t {
		ta[i] = string(v)
	}
	sort.Sort(sort.StringSlice(sa))
	sort.Sort(sort.Reverse(sort.StringSlice(ta)))
	for i := 0; i < Min(len(sa), len(ta)); i++ {
		if sa[i] < ta[i] {
			fmt.Println("Yes")
			return
		} else if sa[i] > ta[i] {
			fmt.Println("No")
			return
		}
	}
	if len(sa) < len(ta) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
func Min(a, b int) int {
	if b < a {
		return b
	}
	return a
}
