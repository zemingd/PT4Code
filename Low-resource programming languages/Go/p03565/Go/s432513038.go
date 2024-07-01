package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s1, t string
	fmt.Scan(&s1, &t)

	s := make([]string, 0)
	for i := 0; i < len(s1); i++ {
		if match(s1[i:], t) {
			s = append(s, strings.Replace(s1[:i]+t+s1[i+len(t):], "?", "a", -1))
		}
	}
	if len(s) > 0 {
		sort.Strings(s)
		fmt.Println(s[0])
	} else {
		fmt.Println("UNRESTORABLE")
	}
}

func match(s1, t string) bool {
	if len(s1) < len(t) {
		return false
	}

	for i := 0; i < len(s1); i++ {
		if i == len(t) {
			break
		}

		if s1[i] != t[i] && s1[i] != '?' {
			return false
		}
	}

	return true
}
