package main

import (
	"fmt"
	"sort"
)

var x, y, a, b, c int
var ps, qs, rs Slice

type Slice []int

func (p Slice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }
func (p Slice) Len() int           { return len(p) }
func (p Slice) Less(i, j int) bool { return p[i] > p[j] } // reverse

func main() {
	fmt.Scan(&x, &y, &a, &b, &c)
	ps = make([]int, a)
	qs = make([]int, b)
	rs = make([]int, c)
	for i := range ps {
		fmt.Scan(&ps[i])
	}
	for i := range qs {
		fmt.Scan(&qs[i])
	}
	for i := range rs {
		fmt.Scan(&rs[i])
	}
	sort.Sort(ps)
	sort.Sort(qs)
	sort.Sort(rs)
	ans := 0

	for k := 0; k <= c; k++ {
		for i := 0; i <= min(x, k); i++ {
			j := k - i
			if j > y {
				continue
			}
			chmax(&ans, sum(ps[:x-i]...)+sum(qs[:y-j]...)+sum(rs[:k]...))
		}
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func sum(as ...int) (sum int) {
	for i := range as {
		sum += as[i]
	}
	return
}

func chmax(a *int, b int) {
	if *a < b {
		*a = b
	}
}