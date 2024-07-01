package main

import (
	"fmt"
	"sort"
)

func ssort(s string, rev bool) string {
	var t []string
	for i := 0; i < len(s); i++ {
		t = append(t, string(s[i]))
	}
	if rev {
		sort.Sort(sort.Reverse(sort.StringSlice(t)))
	} else {
		sort.Strings(t)
	}
	var r string
	for i := 0; i < len(t); i++ {
		r += string(t[i])
	}
	return r
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ss := ssort(s, false)
	tt := ssort(t, true)
	if ss < tt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
