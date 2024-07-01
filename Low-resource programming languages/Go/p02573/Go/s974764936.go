package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, M := ReadInt(), ReadInt()
	adjL = make([][]int, N)
	for i := 0; i < M; i++ {
		A, B := ReadInt()-1, ReadInt()-1
		adjL[A] = append(adjL[A], B)
		adjL[B] = append(adjL[B], A)
	}

	seen = make([]bool, N)
	max := 0
	for i := 0; i < N; i++ {
		m := dfs(i)
		if m > max {
			max = m
		}
	}
	fmt.Println(max)
}

var adjL [][]int
var seen []bool

func dfs(visit int) int {
	if seen[visit] {
		return 0
	}
	seen[visit] = true
	s := 0
	for _, u := range adjL[visit] {
		s += dfs(u)
	}
	return 1 + s
}

type UnionFind []int

func MakeUnionFind(size int) UnionFind {
	parent := make([]int, size)
	for i := 0; i < size; i++ {
		parent[i] = i
	}
	return parent
}
func (uf UnionFind) Unite(x, y int) {
	if x, y = uf.Root(x), uf.Root(y); x != y {
		uf[x] = y
	}
}
func (uf UnionFind) Connected(x, y int) bool { return uf.Root(x) == uf.Root(y) }
func (uf UnionFind) Root(x int) int {
	if uf[x] == x {
		return x
	}
	uf[x] = uf.Root(uf[x])
	return uf[x]
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
