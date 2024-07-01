package main

import "fmt"

var n, m, q int
var as, bs, cs, ds []int
var max int

func main() {
	fmt.Scan(&n, &m, &q)

	as = make([]int, q)
	bs = make([]int, q)
	cs = make([]int, q)
	ds = make([]int, q)
	for i := 0; i < q; i++ {
		fmt.Scan(&as[i], &bs[i], &cs[i], &ds[i])
		as[i]--
		bs[i]--
	}

	for i := 1; i <= m; i++ {
		dfs([]int{i})
	}
	fmt.Println(max)
}

func dfs(vs []int) {
	if len(vs) == n {
		// score
		calc(vs)
		return
	}
	last := vs[len(vs)-1]
	for i := last; i <= m; i++ {
		dfs(append(vs, i))
	}
}

func calc(vs []int) {
	sum := 0
	for i := 0; i < q; i++ {
		if vs[bs[i]]-vs[as[i]] == cs[i] {
			sum += ds[i]
		}
	}
	if sum > max {
		max = sum
	}
}
