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

	lst := []string{}
	for i := 0; i < n; i++ {
		lst = append(lst, s[i:])
	}
	sort.Strings(lst)
	dic := map[string]struct{}{}

	for i := range lst {
		for j := 0; j < len(lst[i]); j++ {
			tmp := lst[i][:j+1]
			if _, in := dic[tmp]; !in {
				K--
				dic[tmp] = struct{}{}
			}
			if K == 0 {
				fmt.Println(tmp)
				return
			}
		}
	}
}
