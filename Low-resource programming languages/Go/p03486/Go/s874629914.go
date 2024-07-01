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
	// fmt.Println("s", s, "s'", ss, "t", t, "t'", tt)
	ans := "No"
	for i := 0; i < len(ss) && i < len(tt); i++ {
		if ss[i] < tt[i] || (i == len(ss)-1 && len(tt)-1 > i) {
			ans = "Yes"
			break
		}
	}
	fmt.Println(ans)
}
