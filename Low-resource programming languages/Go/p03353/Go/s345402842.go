package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&s, &k)

	m := make(map[string]bool)
	for i := 0; i < len(s); i++ {
		for j := i + 1; j < len(s)+1; j++ {
			m[s[i:j]] = true
		}
	}

	var ss []string
	for key := range m {
		ss = append(ss, key)
	}
	sort.Strings(ss)

	fmt.Println(ss[k-1])
}
