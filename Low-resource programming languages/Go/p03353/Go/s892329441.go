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
			if str := s[i:j]; j-i <= 5 && !m[str] {
				l = append(l, str)
				m[str] = true
			}
		}
	}
	sort.Strings(l)
	fmt.Println(l[k-1])
}

/*
func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	prev_min_char := byte('Z')
	for {
		min_char := byte('z')

		for i := 0; i < len(s); i++ {
			if s[i] < min_char && s[i] > prev_min_char {
				min_char = s[i]
			}
		}

		m := make(map[string]bool)
		l := make([]string, 0)
		for i := 0; i < len(s); i++ {
			if s[i] == min_char {
				for j := i + 1; j <= len(s); j++ {
					str := s[i:j]
					if m[str] == false {
						l = append(l, str)
						m[str] = true
					}
				}
			}
		}

		if len(l) >= k {
			sort.Strings(l)
			fmt.Println(l[k-1])
			break
		} else {
			k -= len(l)
			prev_min_char = min_char
		}
	}
}
*/
