package main

import "fmt"

var N, M, K int

type Unionfind struct {
	par   []int
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

func main() {
	fmt.Scan(&N, &M, &K)
	var fs, bs [][]int
	var funion Unionfind
	funion.Init(N)
	fs = make([][]int, N)
	bs = make([][]int, N)

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
		bs[a] = append(bs[a], b)
		bs[b] = append(bs[b], a)
	}

	cs := make([]int, N)
	for a := 0; a < N; a++ {
		siz := funion.Size(a) -1
		for _, b := range fs[a] {
			if funion.Same(a, b) {
				siz--
			}
		}
		for _, b := range bs[a] {
			if funion.Same(a, b) {
				siz--
			}
		}
		cs[a] = siz
	}

	for i, c := range cs {
		if i == len(cs)-1 {
			fmt.Printf("%d\n", c)
		} else {
			fmt.Printf("%d ", c)
		}
	}
}

func contains(as []int, b int) bool {
	for _, a := range as {
		if a == b {
			return true
		}
	}
	return false
}
