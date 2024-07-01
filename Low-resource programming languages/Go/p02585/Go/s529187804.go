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
	C := make([]int64, N)

	hasPositive := false
	uf := ufNew(N)

	for i := 0; i < N; i++ {
		p := nextInt() - 1
		uf.Unite(i, p)
	}
	for i := 0; i < N; i++ {
		C[i] = nextInt64()
		if C[i] > 0 {
			hasPositive = true
		}
	}
	// 全部0以下なら一番マシなものだけ採用する
	if !hasPositive {
		m := int64(math.MinInt64)
		for i := 0; i < N; i++ {
			m = max(m, C[i])
		}
		fmt.Println(m)
		return
	}

	// ループごとに分割して考える
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

	// treesでそれぞれ最大値とそのときの長さを求める
	m := int64(0)

	for i := 0; i < len(trees); i++ {
		tree := trees[i]

		// ループ分を求める。
		loop := int64(0)
		for j := 0; j < len(tree); j++ {
			t := tree[j]
			loop += C[t]
		}
		loop = max(loop, 0) * int64(K/len(tree))

		// あまりの分を求める
		var R int
		if len(tree) == K {
			R = len(tree) - 1
		} else {
			R = K % len(tree)
		}

		rest := int64(0)

		// 1からR個までで最大の部分列を求める
		tree2 := []int{}
		tree2 = append(tree2, tree...)
		tree2 = append(tree2, tree...)

		for r := 1; r <= R; r++ {
			s := int64(0)
			for j := 0; j < r; j++ { // 0 〜 r-1までの合計
				s += C[tree[j]]
			}

			rest = max(rest, s)

			for j := 0; j < len(tree); j++ {
				t := tree2[r+j]
				s += C[t]
				t = tree2[j]
				s -= C[t]

				// debug(rest, s)
				rest = max(rest, s)
			}
		}
		m = max(m, loop+rest)
	}

	fmt.Println(m)
}

func min(a, b int) int {
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

func maxx(a, b int) int {
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
