package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var K int
	fmt.Scan(&s, &K)

	w := make(map[string]string)
	for i := 0; i < len(s); i++ {
		for j := i + 1; j <= min(i+5, len(s)); j++ {
			t := s[i:j]
			w[t] = t
		}
	}

	k := make([]string, len(w))
	i := 0
	for _, c := range w {
		k[i] = c
		i++
	}

	sort.Strings(k)
	fmt.Println(k[K-1])
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
