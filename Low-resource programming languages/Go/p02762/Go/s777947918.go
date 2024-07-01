package main

import "fmt"

var N, M, K int

type Unionfind struct {
	par []int
	siz []int
}

func (u *Unionfind) Init(n int) {
	u.par = make([]int, n)
	u.siz = make([]int, n)
	for i := range u.par {
		u.par[i] = i
		u.siz[i] = 1
	}
}

func (u *Unionfind) Root(x int) int {
	if u.par[x] == x {
		return x
	}
	rx := u.Root(u.par[x])
	u.par[x] = rx
	return u.par[x]
}
func (u *Unionfind) Same(x, y int) bool {
	rx, ry := u.Root(x), u.Root(y)
	return rx == ry
}
func (u *Unionfind) Unite(x, y int) {
	rx, ry := u.Root(x), u.Root(y)
	if rx == ry {
		return
	}
	if u.siz[ry] < u.siz[rx] {
		rx, ry = ry, rx
	}
	u.siz[ry] += u.siz[rx]
	u.par[rx] = ry
}
func (u *Unionfind) Size(x int) int {
	return u.siz[u.Root(x)]
}

var fs [][]int
var funion Unionfind

func main() {
	fmt.Scan(&N, &M, &K)
	funion.Init(N)
	fs = make([][]int, N)

	for i := 0; i < M; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		a, b = a-1, b-1
		fs[a] = append(fs[a], b)
		fs[b] = append(fs[b], a)
		funion.Unite(a, b)
	}
	for i := 0; i < K; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		a, b = a-1, b-1
		fs[a] = append(fs[a], b)
		fs[b] = append(fs[b], a)
	}

	for a := 0; a < N; a++ {
		siz := funion.Size(a) - 1
		for _, b := range fs[a] {
			if funion.Same(a, b) {
				siz--
			}
		}
		if a == N-1 {
			fmt.Printf("%d\n", siz)
		} else {
			fmt.Printf("%d ", siz)
		}
	}
}
