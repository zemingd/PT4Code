package main

import (
	"fmt"
	"sort"
)

type lex []string

func (s lex) Len() int {
	return len(s)
}

func (s lex) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s lex) Less(i, j int) bool {
	for idx := range s[i] {
		if s[i][idx] < s[j][idx] {
			return true
		}
	}
	return false
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	ss := make([]string, n)
	for i := range ss {
		fmt.Scan(&ss[i])
	}

	sort.Sort(lex(ss))
	ans := ""
	for _, s := range ss {
		ans += s
	}
	fmt.Println(ans)
}
