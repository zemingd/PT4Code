package main

import (
	"fmt"
	"sort"
)

func bsort(s []byte) string {
	for i := 0; i < len(s); i++ {
		for j := 0; j < len(s)-1-i; j++ {
			if s[j] > s[j+1] {
				s[j], s[j+1] = s[j+1], s[j]
			}
		}
	}
	return string(s)
}

func main() {
	var N, L int
	fmt.Scan(&N, &L)
	a := make([]string, N)
	for i := range a {
		fmt.Scan(&a[i])
	}
	b := make([]string, N)
	for i := range a {
		b[i] = bsort([]byte(a[i]))
	}
	sort.Strings(b)
	for _, x := range b {
		fmt.Printf("%s", x)
	}
	fmt.Printf("\n")
}
