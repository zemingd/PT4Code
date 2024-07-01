package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

func max(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v > ret {
			ret = v
		}
	}
	return ret
}

func min(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v < ret {
			ret = v
		}
	}
	return ret
}

func calcPoint(n int, p, c []int, point [][]int) {
	for i := 0; i < n; i++ {
		for j := i; ; j = p[j] {
			to := p[j]
			point[i][to] = point[i][j] + c[to]
			if i == to {
				break
			}
		}
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	n, k := nextInt(), nextInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt() - 1
	}
	c := nextInts(n)

	point := make([][]int, n)
	for i := 0; i < n; i++ {
		point[i] = make([]int, n)
	}
	calcPoint(n, p, c, point)
	uf := NewUnionFind(n)
	for i := 0; i < n; i++ {
		uf.Unite(i, p[i])
	}

	// マスfromからcnt回以内の移動で得られる最大スコア
	maxScore := func(from, cnt int) int {
		if cnt == 0 {
			return 0
		}
		res := -10000000000
		score := 0
		for ; cnt > 0; cnt-- {
			score += c[p[from]]
			res = max(res, score)
			from = p[from]
		}
		return res
	}

	ans := -10000000000
	for i := 0; i < n; i++ {
		// マスiから始めたときの最大スコアを求める
		rap := k / uf.Size(i)
		score := max(
			rap*point[i][i]+maxScore(i, k%uf.Size(i)),
			maxScore(i, min(k, uf.Size(i))),
		)
		ans = max(ans, score)
	}

	puts(ans, max(c...))
}

type UnionFind struct {
	Par []int
}

func NewUnionFind(n int) *UnionFind {
	uf := &UnionFind{
		Par: make([]int, n),
	}
	uf.Init(n)
	return uf
}

func (uf *UnionFind) Init(n int) {
	for i := 0; i < n; i++ {
		uf.Par[i] = -1
	}
}

func (uf *UnionFind) Find(x int) int {
	if uf.Par[x] < 0 {
		return x
	}
	uf.Par[x] = uf.Find(uf.Par[x])
	return uf.Par[x]
}

func (uf *UnionFind) Unite(x, y int) {
	x, y = uf.Find(x), uf.Find(y)
	if x == y {
		return
	}

	if uf.Par[x] > uf.Par[y] {
		x, y = y, x
	}
	uf.Par[x] += uf.Par[y]
	uf.Par[y] = x
}

// xの属する集合の要素数
func (uf *UnionFind) Size(x int) int {
	return -uf.Par[uf.Find(x)]
}
