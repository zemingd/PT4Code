package main

import (
	"fmt"
	"sort"
)

type entry struct {
	a, b int
}

type entries []entry

func (es entries) Len() int {
	return len(es)
}
func (es entries) Swap(i, j int) {
	es[i], es[j] = es[j], es[i]
}
func (es entries) Less(i, j int) bool {
	return es[i].a < es[j].a
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	es := make([]entry, n)
	for i := range es {
		fmt.Scan(&es[i].a, &es[i].b)
	}

	sort.Sort(entries(es))

	ans := 0
	num := 0
	for _, e := range es {
		if num+e.b <= m {
			ans += e.a * e.b
			num += e.b
		} else {
			ans += (m - num) * e.a
			break
		}
	}
	fmt.Println(ans)
}
