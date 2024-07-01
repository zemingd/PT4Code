package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, M, K := ReadInt(), ReadInt(), ReadInt()
	uf := MakeUnionFind(N)
	friendAdjL := make([][]int, N)
	for i := 0; i < M; i++ {
		a, b := ReadInt()-1, ReadInt()-1
		uf.Unite(a, b)
		friendAdjL[a] = append(friendAdjL[a], b)
		friendAdjL[b] = append(friendAdjL[b], a)
	}
	blockAdjL := make([][]int, N)
	for i := 0; i < K; i++ {
		a, b := ReadInt()-1, ReadInt()-1
		blockAdjL[a] = append(blockAdjL[a], b)
		blockAdjL[b] = append(blockAdjL[b], a)
	}
	for i := 0; i < N; i++ {
		ans := uf.Size(i) - 1
		for _, j := range friendAdjL[i] {
			if uf.Connected(i, j) {
				ans--
			}
		}
		for _, j := range blockAdjL[i] {
			if uf.Connected(i, j) {
				ans--
			}
		}
		fmt.Printf("%d ", ans)
	}
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
