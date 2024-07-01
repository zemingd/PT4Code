package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	b := make([]string, 0, len(s)*k)
	m := make(map[string]bool)
	for i := 0; i < len(s); i++ {
		for j := 0; j <= k && i+j < len(s); j++ {
			if _, ok := m[s[i:i+j+1]]; !ok {
				m[s[i:i+j+1]] = true
				b = append(b, s[i:i+j+1])
			}
		}
	}
	sort.Strings(b)

	fmt.Println(b[k-1])
}
