package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	l := make([]string, 0)
	m := make(map[string]bool)

	for i := 0; i < len(s); i++ {
		for j := i + 1; j <= len(s); j++ {
			str := s[i:j]
			if !m[str] {
				l = append(l, s[i:j])
				m[str] = true
			}
		}
	}

	sort.Strings(l)
	fmt.Println(l[k-1])
}
