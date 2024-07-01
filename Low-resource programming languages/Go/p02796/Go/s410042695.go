package main

import (
	"fmt"
	"sort"
)

// Pair .
type Pair struct {
	l int
	r int
}

// Pairs .
type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}

func (p Pairs) Less(i, j int) bool {
	return p[i].r < p[j].r
}

func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func main() {
	var n int
	fmt.Scan(&n)

	pairs := make([]Pair, n)
	var x, l int
	for i := 0; i < n; i++ {
		fmt.Scan(&x, &l)
		pairs[i] = Pair{x - l, x + l}
	}
	sort.Sort(Pairs(pairs))

	ans := 0
	pr := int(-1e9 - 10)
	for i := 0; i < n; i++ {
		p := pairs[i]
		if pr <= p.l {
			ans++
			pr = p.r
		}
	}
	fmt.Println(ans)
}
