package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var s string
	fmt.Scan(&s, &n)
	m := map[string]int{}
	for i := 0; i < len(s); i++ {
		for j := 1; j <= n; j++ {
			if i+j > len(s) {
				break
			}
			m[s[i:i+j]]++
		}
	}
	a := []string{}
	for k, _ := range m {
		a = append(a, k)
	}
	sort.Strings(a)
	fmt.Println(a[n-1])
}
func min(a, b int) int {
	if b < a {
		return b
	}
	return a
}