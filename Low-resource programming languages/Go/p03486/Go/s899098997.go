package main

import (
	"fmt"
	"sort"
)

type byAbc []rune

func (a byAbc) Len() int           { return len(a) }
func (a byAbc) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a byAbc) Less(i, j int) bool { return a[i] < a[j] }

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := byAbc(s)
	ts := byAbc(t)

	sort.Sort(ss)
	sort.Sort(sort.Reverse(ts))

	ans := ""
	for i := 0; i < min(len(ss), len(ts)); i++ {
		if ss[i] < ts[i] {
			ans = "Yes"
			break
		}
		if ss[i] > ts[i] {
			ans = "No"
			break
		}
	}

	if ans == "" {
		if len(ss) < len(ts) {
			ans = "Yes"
		} else {
			ans = "No"
		}
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
