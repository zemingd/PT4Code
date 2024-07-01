package main

import (
	"fmt"
	"sort"
	"strings"
)

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	as := strings.Split(s, "")
	at := strings.Split(t, "")
	sort.Strings(as)
	sort.Sort(sort.Reverse(sort.StringSlice(at)))
	s = strings.Join(as, "")
	t = strings.Join(at, "")
	for i := 0; i < max(len(s), len(t)); i++ {
		if i >= len(s) {
			fmt.Println("Yes")
			return
		}
		if i >= len(t) {
			fmt.Println("No")
			return
		}
		if s[i] < t[i] {
			fmt.Println("Yes")
			return
		}
		if s[i] > t[i] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("No")
}
