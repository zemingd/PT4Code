package main

import (
	"fmt"
	"sort"
)

type byRune []rune

func (r byRune) Len() int { return len(r) }
func (r byRune) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func (r byRune) Less(i, j int) bool {
	return r[i] < r[j]
}

func sortString(s string, reverse bool) string {
	r := []rune(s)
	if reverse {
		sort.Sort(sort.Reverse(byRune(r)))
	} else {
		sort.Sort(byRune(r))
	}
	return string(r)
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	s = sortString(s, false)
	t = sortString(t, true)
	if s < t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
