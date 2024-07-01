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

	h, w, k := scanInt(), scanInt(), scanInt()
	x1, y1, x2, y2 := scanInt()-1, scanInt()-1, scanInt()-1, scanInt()-1
	c := make([]string, h)
	done := make([][][4]bool, h)
	d := make([][][4]int, h)

	for i := 0; i < h; i++ {
		c[i] = scanString()
		done[i] = make([][4]bool, w)
		d[i] = make([][4]int, w)
		for j := 0; j < w; j++ {
			for l := 0; l < 4; l++ {
				d[i][j][l] = inf
			}
		}
	}
	for i := 0; i < 4; i++ {
		d[x1][y1][i] = 0
	}

	pq := &pqAsc{pair{x1, y1, 0, 0}, pair{x1, y1, 1, 0}, pair{x1, y1, 2, 0}, pair{x1, y1, 3, 0}}
	heap.Init(pq)
	dx, dy := []int{0, -1, 0, 1}, []int{1, 0, -1, 0}

	for len(*pq) != 0 {
		p := heap.Pop(pq).(pair)
		if p.co > d[p.x][p.y][p.d] {
			continue
		}

		for i := 0; i < 4; i++ {
			nx, ny := p.x+dx[i], p.y+dy[i]
			if nx < 0 || ny < 0 || nx >= h || ny >= w || c[nx][ny] == '@' {
				continue
			}
			var co int
			if p.d == i {
				co = p.co + 1
			} else {
				co = (p.co+k-1)/k*k + 1
			}
			if d[nx][ny][i] > co {
				d[nx][ny][i] = co
				heap.Push(pq, pair{nx, ny, i, co})
			}
		}
	}

	ans := inf
	for i := 0; i < 4; i++ {
		ans = min(ans, d[x2][y2][i])
	}
	if ans == inf {
		fmt.Fprintln(wr, -1)
	} else {
		fmt.Fprintln(wr, (ans+k-1)/k)
	}

}

type pair struct{ x, y, d, co int }

const inf = 1<<63 - 1

type pqAsc []pair

func (pq pqAsc) Len() int            { return len(pq) }
func (pq pqAsc) Swap(i, j int)       { pq[i], pq[j] = pq[j], pq[i] }
func (pq pqAsc) Less(i, j int) bool  { return pq[i].co < pq[j].co }
func (pq *pqAsc) Push(x interface{}) { *pq = append(*pq, x.(pair)) }
func (pq *pqAsc) Pop() interface{} {
	x := (*pq)[len(*pq)-1]
	*pq = (*pq)[0 : len(*pq)-1]
	return x
}
