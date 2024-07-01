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

	ans := int(-1e15)
	for i := 0; i < n; i++ {
		c := calc(ps, cs, k, i)
		ans = max(ans, c)
	}
	fmt.Println(ans)
}

func calc(ps []int, cs []int, k, s int) int {
	n := len(ps)
	mx := int(-1e15)
	l := 0
	sum := 0
	done := make([]bool, n)
	var dfs func(u int)
	dfs = func(u int) {
		if done[u] {
			return
		}
		l++
		done[u] = true

		sum += cs[u]
		mx = max(mx, sum)
		k--
		if k == 0 {
			return
		}
		dfs(ps[u])
	}
	dfs(ps[s])

	if sum > 0 && k > 0 {
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
