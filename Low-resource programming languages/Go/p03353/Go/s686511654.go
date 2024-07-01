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

	m := make(map[string]bool, 100000000)
	lenS := len(s)
	for l := 0; l <= lenS; l++ {
		for r := l + 1; r <= lenS; r++ {
			m[s[l:r]] = true
		}
	}

	keys := make([]string, len(m))
	i := 0
	for key := range m {
		keys[i] = key
		i++
	}
	sort.Strings(keys)

	fmt.Println(keys[k-1])
}
