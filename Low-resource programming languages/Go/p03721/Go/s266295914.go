package main

import (
	"fmt"
	"sort"
)

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	n := nextInt()
	k := nextInt()

	ps := make([]pair, n)
	for i := range ps {
		a := nextInt()
		b := nextInt()
		ps[i] = pair{a, b}
	}
	sort.Sort(pairs(ps))

	var ans int
	for k > 0 {
		ans = ps[0].x
		k -= ps[0].y
		ps = ps[1:]
	}
	fmt.Println(ans)
}

type pair struct{ x, y int }
type pairs []pair

func (ps pairs) Len() int           { return len(ps) }
func (ps pairs) Swap(i, j int)      { ps[i], ps[j] = ps[j], ps[i] }
func (ps pairs) Less(i, j int) bool { return ps[i].x < ps[j].x }
