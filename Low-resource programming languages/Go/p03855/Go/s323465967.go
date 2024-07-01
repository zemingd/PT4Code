package main

import (
	"fmt"
	"strconv"
	"strings"
)

type input struct {
	from, to int
}

func main() {
	var n, k, l int
	// n = 1
	fmt.Scan(&n, &k, &l)

	inputs := []input{}
	for i := 0; i < k+l; i++ {
		in := input{}
		fmt.Scan(&in.from, &in.to)
		inputs = append(inputs, in)
	}
	// fmt.Println(inputs)

	solve := func(inputs []input) string {
		roads := newUnion(n + 1)
		rails := newUnion(n + 1)

		for i, input := range inputs {
			if i < k {
				roads.unite(input.from, input.to)
			} else {
				rails.unite(input.from, input.to)
			}
		}
		routeSet := make(map[[2]int]int)
		for i := 1; i <= n; i++ {
			routeSet[[2]int{roads.root(i), rails.root(i)}]++
		}
		// fmt.Println(routeSet)
		results := make([]string, n)
		for i := 1; i <= n; i++ {
			results[i-1] = strconv.Itoa(routeSet[[2]int{roads.root(i), rails.root(i)}])
		}
		return strings.Join(results, " ")

	}
	fmt.Println(solve(inputs))
}

func newUnion(n int) *union {
	u := new(union)
	u.init(n)
	return u
}

type union struct {
	parent map[int]int
	rank   map[int]int
}

func (u *union) init(n int) {
	u.parent = make(map[int]int)
	u.rank = make(map[int]int)
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
		u.parent[xr] = yr
	} else {
		u.parent[yr] = xr
		if u.rank[xr] == u.rank[yr] {
			u.rank[x]++
		}
	}
}
