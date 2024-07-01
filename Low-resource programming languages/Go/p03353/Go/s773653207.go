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

	cnt := 0
	for i := range lst {
		for j := 0; j < len(lst[i]) && j < K; j++ {
			tmp := lst[i][:j+1]
			if _, in := dic[tmp]; !in {
				cnt++
				dic[tmp] = struct{}{}
			}
			if cnt == K {
				fmt.Println(tmp)
				return
			}
		}
	}
}
