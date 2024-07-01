package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ps := make([]int, n)
	var p int
	for i := 0; i < n; i++ {
		fmt.Scan(&p)
		ps[i] = p - 1
	}
	cs := make([]int, n)
	var c int
	for i := 0; i < n; i++ {
		fmt.Scan(&c)
		cs[i] = c
	}

	ans := int(-1e18)
	for i := 0; i < n; i++ {
		c := calc(ps, cs, k, i)
		ans = max(ans, c)
	}
	fmt.Println(ans)
}

func calc(ps []int, cs []int, k, s int) int {
	n := len(ps)
	mx := int(-1e18)
	l := 0
	sum := 0
	done := make([]bool, n)
	var dfs func(i int)
	dfs = func(i int) {
		if done[i] {
			return
		}
		l++
		done[i] = true

		sum += cs[i]
		mx = max(mx, sum)
		k--
		if k == 0 {
			return
		}
		dfs(ps[i])
	}
	dfs(ps[s])

	if sum >= 0 && k > 0 {
		sum += sum * (k / l)
		k = k % l
		done = make([]bool, n)
		dfs(ps[s])
	}

	return mx
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
