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

	array := make([]string, 0, 50000)
	for i := 'a'; i <= 'z'; i++ {
		for j, c := range s {
			if i == rune(c) {
				array = addSubstring(array, s[j:], k)
			}
		}
		sort.Strings(array)
		if len(array) == k {
			break
		}
	}

	fmt.Println(array[k-1])
}

func addSubstring(a []string, s string, k int) []string {
	for i := 0; i < min(k, len(s)); i++ {
		subs := s[0 : i+1]
		flag := true
		for _, t := range a {
			if t == subs {
				flag = false
				break
			}
		}
		if flag == true {
			a = append(a, subs)
		}
	}
	return a
}

func min(a, b int) int {
	for a < b {
		return a
	}
	return b
}
