package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var K int
	fmt.Scan(&s, &K)
	n := len(s)

	dic := map[string]struct{}{}
	lst := []string{}

	for i := 0; i < n; i++ {
		for j := i; j < n; j++ {
			tmp := s[i : j+1]
			if _, in := dic[tmp]; !in {
				lst = append(lst, tmp)
				dic[tmp] = struct{}{}
			}
		}
	}
	sort.Strings(lst)
	fmt.Println(lst[K-1])
}
