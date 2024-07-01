package main

import (
	"fmt"
)

var n, m, q int
var ms int
var as, bs, cs, ds []int

func main() {
	fmt.Scan(&n, &m, &q)
	as = make([]int, q)
	bs = make([]int, q)
	cs = make([]int, q)
	ds = make([]int, q)
	for i := range as {
		fmt.Scan(&as[i], &bs[i], &cs[i], &ds[i])
	}
	for i := 1; i <= m; i++ {
		loop([]int{i})
	}
	fmt.Println(ms)
}

func loop(ns []int) {
	num := len(ns)
	last := ns[num-1]
	for i := last; i <= m; i++ {
		nns := make([]int, num+1)
		copy(nns, ns)
		nns[num] = i
		if num == n-1 {
			score := calc(nns)
			ms = max(ms, score)
		} else {
			loop(nns)
		}
	}
}

func calc(s []int) int {
	var sum int
	for i := range as {
		if s[bs[i]-1]-s[as[i]-1] == cs[i] {
			sum += ds[i]
		}
	}
	return sum
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
