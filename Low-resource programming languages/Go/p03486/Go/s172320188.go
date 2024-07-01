package main

import (
	"fmt"
	"sort"
)

type Poi []rune

func (p Poi) Len() int           { return len(p) }
func (p Poi) Less(i, j int) bool { return p[i] < p[j] }
func (p Poi) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func solve() {
	var ss, ts string
	fmt.Scan(&ss, &ts)
	s := Poi(ss)
	t := Poi(ts)

	sort.Sort(s)
	sort.Sort(sort.Reverse(t))

	if check(s, t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func check(a, b []rune) bool {
	for i, as := range a {
		bs := b[i]
		if as < bs {
			return true
		} else if as > bs {
			return false
		}
		if len(b)-1 == i {
			break
		}
	}
	if len(a) < len(b) {
		return true
	}
	return false
}

func main() {
	solve()
}
