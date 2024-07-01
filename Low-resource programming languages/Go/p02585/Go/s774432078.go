package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	K := nextInt()
	P := make([]int, N)
	C := make([]int64, N)

	hasPositive := false
	uf := ufNew(N)

	for i := 0; i < N; i++ {
		P[i] = nextInt() - 1
		uf.Unite(i, P[i])
	}
	for i := 0; i < N; i++ {
		C[i] = nextInt64()
		if C[i] >= 0 {
			hasPositive = true
		}
	}

	added := make([]bool, N)
	trees := make([][]int, 0)

	for i := 0; i < N; i++ {
		if added[i] {
			continue
		}
		added[i] = true

		tree := make([]int, 0)
		tree = append(tree, i)

		for j := i + 1; j < N; j++ {
			if added[j] {
				continue
			}
			if uf.Same(i, j) {
				tree = append(tree, j)
				added[j] = true
			}
		}

		trees = append(trees, tree)
	}

	// treesでそれぞれ最大値を求める
	sums := make([]int64, len(trees))
	totals := make([]int64, len(trees))
	rests := make([]int64, len(trees))
	lengths := make([]int, len(trees))

	for i := 0; i < len(trees); i++ {
		tree := trees[i]

		sum := make([]int64, len(tree)+1)
		sum[0] = 0
		for j := 1; j < len(sum); j++ {
			c := C[tree[j-1]]
			totals[i] += c
			sum[j] = sum[j-1] + c
		}

		sums[i] = 0
		rests[i] = 0

		for j := 0; j < len(sum)*2; j++ {
			for k := j + 1; k < len(sum)*2; k++ {
				l := k - j
				if l > K || l > len(tree) {
					break
				}

				var s int64
				kk := k % len(sum)
				jj := j % len(sum)

				if kk > jj {
					s = sum[kk] - sum[jj]
				} else {
					s = sum[kk] + sum[len(sum)-1] - sum[jj-1]
				}
				if sums[i] < s {
					sums[i] = s
					lengths[i] = l
				}
				if l <= K%len(tree) {
					rests[i] = max(rests[i], s)
				}
			}
		}
	}

	m := int64(0)
	for i := 0; i < len(trees); i++ {
		s := sums[i]
		l := lengths[i]

		if l <= K {
			m = max(m, s)
		}
		if totals[i] > 0 {
			m = max(m, totals[i]*int64(K/len(trees[i]))+rests[i])
		}
	}

	if m == 0 && !hasPositive {
		m = math.MinInt64
		for i := 0; i < N; i++ {
			m = max(m, C[i])
		}
	}
	fmt.Println(m)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func min64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

// UnionFind : UnionFind構造を保持する構造体
type UnionFind struct {
	par  []int // i番目のノードに対応する親
	rank []int // i番目のノードの階層
}

// [0, n)のノードを持つUnion-Findを作る
func ufNew(n int) UnionFind {
	uf := UnionFind{par: make([]int, n), rank: make([]int, n)}

	for i := 0; i < n; i++ {
		uf.par[i] = i
	}

	return uf
}

// Root はxのルートを得る
func (uf *UnionFind) Root(x int) int {
	p := x
	for p != uf.par[p] {
		p = uf.par[p]
	}
	uf.par[x] = p
	return p
}

// Unite はxとyを併合する。集合の構造が変更された(== 呼び出し前は異なる集合だった)かどうかを返す
func (uf *UnionFind) Unite(x, y int) bool {
	rx := uf.Root(x)
	ry := uf.Root(y)

	if rx == ry {
		return false
	}
	if uf.rank[rx] < uf.rank[ry] {
		rx, ry = ry, rx
	}
	if uf.rank[rx] == uf.rank[ry] {
		uf.rank[rx]++
	}
	uf.par[ry] = rx
	return true
}

// Same はxとyが同じノードにいるかを判断する
func (uf *UnionFind) Same(x, y int) bool {
	rx := uf.Root(x)
	ry := uf.Root(y)
	return rx == ry
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}

func debug(args ...interface{}) {
	fmt.Fprintln(os.Stderr, args)
}
