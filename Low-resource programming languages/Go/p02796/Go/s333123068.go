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
	if p[i].l == p[j].l {
		return p[i].r < p[i].r
	}

	return p[i].l < p[j].l
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

	ans := n
	p1 := pairs[0]
	for i := 1; i < n; i++ {
		p2 := pairs[i]
		if p2.l < p1.r {
			ans--
		}
	}

	fmt.Println(ans)
}
