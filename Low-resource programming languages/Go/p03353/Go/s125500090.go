package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	m := make(map[string]int, 5000*5)
	for i := 0; i < len(s); i++ {
		for j := i + 1; j <= i+k && j <= len(s); j++ {
			m[s[i:j]]++
		}
	}
	ks := make([]string, 0)
	for k := range m {
		ks = append(ks, k)
	}
	sort.Strings(ks)
	fmt.Println(ks[k-1])
}
