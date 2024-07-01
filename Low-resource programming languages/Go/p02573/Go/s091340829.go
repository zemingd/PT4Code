package main

import (
	"bufio"
	"fmt"
	"os"
)

type unionfind []int

func unionfindInit(n int) unionfind {
	tmp := make([]int, n)
	for i := range tmp {
		tmp[i] = -1
	}
	return tmp
}

func (u unionfind) root(i int) int {
	if u[i] < 0 {
		return i
	}
	u[i] = u.root(u[i])
	return u[i]
}

func (u unionfind) size(i int) int {
	return u[u.root(i)] * -1
}

func (u unionfind) unite(i, j int) {
	ri := u.root(i)
	rj := u.root(j)
	if ri == rj {
		return
	}
	if u[ri] > u[rj] {
		ri, rj = rj, ri
	}
	u[ri] += u[rj]
	u[rj] = ri
	return
}

func main() {
	var n, m int
	r := bufio.NewReader(os.Stdin)
	fmt.Fscan(r, &n, &m)

	u := unionfindInit(n)

	for i := 0; i < m; i++ {
		var tmp1, tmp2 int
		fmt.Fscan(r, &tmp1, &tmp2)
		u.unite(tmp1-1, tmp2-1)
	}

	max := 0
	for i := range u {
		if max < u.size(i) {
			max = u.size(i)
		}
	}

	fmt.Println(max)
}
