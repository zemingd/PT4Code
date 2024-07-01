package main

import "fmt"

type uf struct {
	size  int
	pare  int
	child []int
}

var p []uf

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	inits(n)
	for i := 0; i < m; i++ {
		var t1, t2 int
		fmt.Scanf("%d %d", &t1, &t2)
		add(t1, t2)
	}
	ans := 0
	for _, i := range p {
		if i.size > ans {
			ans = i.size
		}
	}
	fmt.Println(ans)
}
func inits(n int) {
	p = append(p, uf{size: 1})
	for i := 0; i < n; i++ {
		p = append(p, uf{size: 1})
	}
}
func add(ain, bin int) {
	a := root(ain)
	b := root(bin)
	if a == b {
		return
	}
	p[a].size += p[b].size
	p[a].child = append(p[a].child, b)
	p[b].pare = a
}
func root(a int) int {
	pare := p[a].pare
	if pare == 0 {
		return a
	} else {
		return root(pare)
	}
}
