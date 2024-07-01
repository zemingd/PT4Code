package main
 
import (
	"fmt"
)
 
var par []int
 
func main() {
	var n, m, k int
	fmt.Scan(&n, &m, &k)
 
	par = make([]int, n)
	for i := range par {
		par[i] = i
	}
 
	ps := make([][]int, n)
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		a--
		b--
		ps[a] = append(ps[a], b)
		ps[b] = append(ps[b], a)
		unite(a, b)
	}
 
	pc := make([]int, n)
	for i := range par {
		r := root(par[i])
		pc[r]++
	}
 
	ans := make([]int, n)
	for i := range par {
		ans[i] = pc[root(par[i])] - 1
		ans[i] -= len(ps[i])
	}
 
	for i := 0; i < k; i++ {
		var c, d int
		fmt.Scan(&c, &d)
		c--
		d--
		if same(c, d) {
			ans[c]--
			ans[d]--
		}
	}
 
	for i := range ans {
		fmt.Println(ans[i])
	}
}
 
func root(x int) int {
	if par[x] == x {
		return x
	}
	par[x] = root(par[x])
	return par[x]
}
 
func unite(x, y int) {
	rx := root(x)
	ry := root(y)
	if rx == ry {
		return
	}
	par[rx] = ry
}
 
func same(x, y int) bool {
	return root(x) == root(y)
}