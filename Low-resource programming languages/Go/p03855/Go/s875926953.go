package main

import (
	"fmt"
	"strconv"
	"strings"
)

type line struct {
	p, q int
}

func main() {
	var n, k, l int
	// n = 1
	fmt.Scan(&n, &k, &l)

	lines := []line{}
	for i := 0; i < k+l; i++ {
		l := line{}
		fmt.Scan(&l.p, &l.q)
		lines = append(lines, l)
	}
	// fmt.Println(lines)

	test := func(lines []line) string {
		roads := newUnion(n + 1)
		rails := newUnion(n + 1)

		for i, line := range lines {
			if i < k {
				roads.unite(line.p, line.q)
			} else {
				rails.unite(line.p, line.q)
			}
			// fmt.Println(line.p, line.q)
		}
		// for i := 1; i <= n; i++ {
		// 	fmt.Print(i, roads.parent[i])
		// 	fmt.Println(rails.parent[i])
		// }

		checkCity := func(route *union) map[int]int {
			routeCheck := make(map[int]int)
			for i := 1; i <= n; i++ {
				routeCheck[i] = 0
			}
			for i := 1; i <= n; i++ {
				if route.parent[i] != i {
					routeCheck[i] = 1
					routeCheck[route.parent[i]] = 1
				}
			}
			return routeCheck
		}
		roadsCheck := checkCity(roads)
		railsCheck := checkCity(rails)
		// fmt.Println("roads", roadsCheck)
		// fmt.Println("rails", railsCheck)
		// chdckCirty(rails)
		result := make([]string, n)
		for k, v := range roadsCheck {
			result[k-1] = strconv.Itoa(v + railsCheck[k])
		}
		return strings.Join(result, " ")
	}
	fmt.Println(test(lines))
}

func newUnion(n int) *union {
	u := new(union)
	u.init(n)
	return u
}

type union struct {
	parent map[int]int
}

func (u *union) init(n int) {
	u.parent = make(map[int]int)
	for i := 0; i < n; i++ {
		u.parent[i] = i
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
	x = u.root(x)
	y = u.root(y)
	if x == y {
		return
	}
	u.parent[y] = x
}
