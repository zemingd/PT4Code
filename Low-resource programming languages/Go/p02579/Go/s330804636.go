package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

//•*¨*•.¸¸♪main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)
func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	H, W := scanInt(), scanInt()
	c0, c1 := scanInt()-1, scanInt()-1
	d0, d1 := scanInt()-1, scanInt()-1

	s := make([]string, H)
	for i := 0; i < H; i++ {
		s[i] = scanString()
	}

	g := make([][]int, H)
	inf := 1 << 60
	for i := 0; i < H; i++ {
		g[i] = make([]int, W)
		for j := 0; j < W; j++ {
			g[i][j] = inf
		}
	}
	dx, dy := []int{0, 1, 0, -1}, []int{1, 0, -1, 0}

	pq := &pqAsc{pair{c0, c1, 0}}
	heap.Init(pq)
	g[c0][c1] = 0

	for len(*pq) != 0 {
		nt := heap.Pop(pq).(pair)
		if nt.c != g[nt.a][nt.b] {
			continue
		}
		for i := 0; i < 4; i++ {
			nx, ny := nt.a+dx[i], nt.b+dy[i]
			if nx < 0 || nx >= H || ny < 0 || ny >= W || s[nx][ny] == '#' {
				continue
			}
			if g[nx][ny] > nt.c {
				heap.Push(pq, pair{nx, ny, nt.c})
				g[nx][ny] = nt.c
			}
		}

		for i := -2; i <= 2; i++ {
			for j := -2; j <= 2; j++ {
				nx, ny := nt.a+i, nt.b+j
				if nx < 0 || nx >= H || ny < 0 || ny >= W || s[nx][ny] == '#' {
					continue
				}
				if g[nx][ny] > nt.c+1 {
					heap.Push(pq, pair{nx, ny, nt.c + 1})
					g[nx][ny] = nt.c + 1
				}
			}
		}
	}
	if g[d0][d1] == inf {
		fmt.Fprintln(wr, -1)
	} else {
		fmt.Fprintln(wr, g[d0][d1])
	}
}

type pair struct{ a, b, c int }

type pqAsc []pair

func (pq pqAsc) Len() int            { return len(pq) }
func (pq pqAsc) Swap(i, j int)       { pq[i], pq[j] = pq[j], pq[i] }
func (pq pqAsc) Less(i, j int) bool  { return pq[i].c < pq[j].c }
func (pq *pqAsc) Push(x interface{}) { *pq = append(*pq, x.(pair)) }
func (pq *pqAsc) Pop() interface{} {
	x := (*pq)[len(*pq)-1]
	*pq = (*pq)[0 : len(*pq)-1]
	return x
}
