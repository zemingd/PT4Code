package main

import "fmt"

var parent []int

func main() {
	var N, M, K int
	fmt.Scan(&N, &M, &K)
	parent = make([]int, N)
	for i := range parent {
		parent[i] = i
	}
	ps := make([]int, N)
	for i := 0; i < M; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		a--
		b--
		ps[a]++
		ps[b]++
		union(a, b)
	}
	m := make([]int, N)
	for i := range parent {
		parent[i] = root(i)
		m[parent[i]]++
	}
	cs := make([]int, N)
	for i := range cs {
		cs[i] = m[parent[i]] - 1
		cs[i] -= ps[i]
	}
	for i := 0; i < K; i++ {
		var c, d int
		fmt.Scan(&c, &d)
		c--
		d--
		if parent[c] == parent[d] {
			cs[c]--
			cs[d]--
		}
	}
	for _, v := range cs {
		fmt.Print(v)
		fmt.Print(" ")
	}
	fmt.Println()
}

func union(x, y int) {
	rx := root(x)
	ry := root(y)
	if rx == ry {
		return
	}
	parent[rx] = ry
}

func root(x int) int {
	if x == parent[x] {
		return x
	}
	parent[x] = root(parent[x])
	return parent[x]
}
