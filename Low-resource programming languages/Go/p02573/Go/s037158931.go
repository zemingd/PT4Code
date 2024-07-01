package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, M := ReadInt(), ReadInt()
	uf := MakeUnionFind(N)
	for i := 0; i < M; i++ {
		A, B := ReadInt()-1, ReadInt()-1
		uf.Unite(A, B)
	}
	max := 0
	for i := 0; i < N; i++ {
		size := uf.Size(i)
		if size > max {
			max = size
		}
	}
	fmt.Println(max)
}

type UnionFind []int

func MakeUnionFind(size int) UnionFind {
	uf := make([]int, size)
	for i := 0; i < size; i++ {
		uf[i] = -1
	}
	return uf
}
func (uf UnionFind) Root(x int) int {
	if uf[x] < 0 {
		return x
	}
	uf[x] = uf.Root(uf[x])
	return uf[x]
}
func (uf UnionFind) Unite(x, y int) {
	x, y = uf.Root(x), uf.Root(y)
	if x == y {
		return
	}
	if uf[x] > uf[y] {
		x, y = y, x
	}
	uf[x] += uf[y]
	uf[y] = x
}
func (uf UnionFind) Connected(x, y int) bool { return uf.Root(x) == uf.Root(y) }
func (uf UnionFind) Size(x int) int          { return -uf[uf.Root(x)] }

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
