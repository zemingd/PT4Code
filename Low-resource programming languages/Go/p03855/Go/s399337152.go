package main

import (
	"fmt"
)

type input struct {
	from, to int
}

func main() {
	var n, k, l int
	// n = 1
	fmt.Scan(&n, &k, &l)

	inputs := make([]input, k+l)
	for i := 0; i < k+l; i++ {
		in := input{}
		fmt.Scan(&in.from, &in.to)
		inputs[i] = in
	}
	// fmt.Println(inputs)

	solve := func(inputs []input) {
		roads := newUnion(n + 1)
		rails := newUnion(n + 1)

		for i, in := range inputs {
			if i < k {
				roads.unite(in.from, in.to)
			} else {
				rails.unite(in.from, in.to)
			}
		}
		routeSet := make(map[int]map[int]int)
		for i := 1; i <= n; i++ {
			x := roads.root(i)
			y := rails.root(i)
			if routeSet[x] == nil {
				routeSet[x] = make(map[int]int)
			}
			routeSet[x][y]++
		}
		for i := 1; i <= n; i++ {
			fmt.Print(routeSet[roads.root(i)][rails.root(i)], " ")
		}
		return
	}
	solve(inputs)

}

func newUnion(n int) *union {
	u := new(union)
	u.init(n)
	return u
}

type union struct {
	parent []int
	rank   []int
}

func (u *union) init(n int) {
	u.parent = make([]int, n)
	u.rank = make([]int, n)
	for i := 0; i < n; i++ {
		u.parent[i] = i
		u.rank[i] = 0
	}
}

func (u *union) root(x int) int {
	if u.parent[x] == x {
		return x
	}
	return u.root(u.parent[x])
}
func (u *union) same(x, y int) bool {
	return u.root(x) == u.root(y)
}
func (u *union) unite(x, y int) {
	xr := u.root(x)
	yr := u.root(y)
	if xr == yr {
		return
	}
	if u.rank[xr] < u.rank[yr] {
		xr, yr = yr, xr
	}
	u.parent[xr] = yr
	if u.rank[xr] == u.rank[yr] {
		u.rank[xr]++
	}
}
