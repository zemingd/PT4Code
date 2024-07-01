package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	pairs := make([]Pair, n)
	for i := 0; i < n; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		pairs[i] = Pair{A: a, B: b}
	}
	sort.Sort(Pairs(pairs))

	sum := 0
	for _, p := range pairs {
		sum += p.B
		if k <= sum {
			fmt.Println(p.A)
			return
		}
	}
}

// Pair .
type Pair struct {
	A int
	B int
}

// Pairs .
type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}

func (p Pairs) Less(i, j int) bool {
	return p[i].A < p[j].A
}

func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}
