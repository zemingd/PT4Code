package main

import "fmt"

var n, m, q int
var a, b, c, d []int
var max int

func main() {
	fmt.Scan(&n, &m, &q)
	a = make([]int, q)
	b = make([]int, q)
	c = make([]int, q)
	d = make([]int, q)
	for i := 0; i < q; i++ {
		fmt.Scan(&a[i], &b[i], &c[i], &d[i])
		a[i]--
		b[i]--
	}
	for i := 1; i <= m; i++ {
		dfs([]int{i})
	}
	fmt.Println(max)
}

func dfs(vs []int) {
	if len(vs) == n {
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
		if vs[b[i]]-vs[a[i]] == c[i] {
			sum += d[i]
		}
	}
	if sum > max {
		max = sum
	}
}
