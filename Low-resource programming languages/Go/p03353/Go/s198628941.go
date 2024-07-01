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
	xs := make([]string, 0, len(s)*(len(s)+1)/2)
	for i := 1; i <= len(s); i++ {
		for j := 0; j+i <= len(s); j++ {
			w := s[j : j+i]
			if m[w] {
				continue
			}
			xs = append(xs, w)
			m[w] = true
		}
	}

	sort.Strings(xs)
	fmt.Println(xs[k-1])
}
