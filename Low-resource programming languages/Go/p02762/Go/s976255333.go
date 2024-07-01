package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve(sc *scanner, wr *bufio.Writer) {
	n, m, k := sc.getInt3()

	uf := newUnionFind(n)
	friend := make(map[int]int)
	for i := 0; i < m; i++ {
		a, b := sc.getInt()-1, sc.getInt()-1
		friend[a]++
		friend[b]++
		uf.unite(a, b)
	}

	blocked := make([][]int, n)
	for i := 0; i < k; i++ {
		c, d := sc.getInt()-1, sc.getInt()-1
		blocked[c] = append(blocked[c], d)
		blocked[d] = append(blocked[d], c)
	}

	for i := range blocked {
		ans := uf.size(i) - friend[i] - 1
		for _, j := range blocked[i] {
			if uf.root(i) == uf.root(j) {
				ans--
			}
		}
		fmt.Fprintln(wr, ans)
	}
}

// union-find tree
type unionFind struct {
	pars []int
}

func newUnionFind(n int) *unionFind {
	uf := new(unionFind)
	uf.pars = make([]int, n)
	for i := range uf.pars {
		uf.pars[i] = -1
	}
	return uf
}

func (uf *unionFind) root(x int) int {
	if uf.pars[x] < 0 {
		return x
	}
	uf.pars[x] = uf.root(uf.pars[x])
	return uf.pars[x]
}

func (uf *unionFind) unite(_x, _y int) {
	x, y := uf.root(_x), uf.root(_y)
	if x == y {
		return
	}

	if uf.size(x) < uf.size(y) {
		x, y = y, x
	}
	uf.pars[x] += uf.pars[y]
	uf.pars[y] = x
}

func (uf *unionFind) same(x, y int) bool {
	return uf.root(x) == uf.root(y)
}

func (uf *unionFind) size(x int) int {
	return -uf.pars[uf.root(x)]
}

func main() {
	sc := newScanner()
	wr := bufio.NewWriter(os.Stdout)
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)

	solve(sc, wr)
	wr.Flush()
}

// input ------------------------
type scanner struct {
	*bufio.Scanner
}

func newScanner() *scanner {
	sc := bufio.NewScanner(os.Stdin)
	return &scanner{sc}
}
func (sc *scanner) getInt() int {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return ret
}
func (sc *scanner) getInt2() (int, int) {
	return sc.getInt(), sc.getInt()
}
func (sc *scanner) getInt3() (int, int, int) {
	return sc.getInt(), sc.getInt(), sc.getInt()
}
func (sc *scanner) getInt4() (int, int, int, int) {
	return sc.getInt(), sc.getInt(), sc.getInt(), sc.getInt()
}
func (sc *scanner) getInts(n int) []int {
	ret := make([]int, n)
	for i := range ret {
		ret[i] = sc.getInt()
	}
	return ret
}
func (sc *scanner) getString() string {
	sc.Scan()
	return sc.Text()
}
func (sc *scanner) getRunes() []rune {
	return []rune(sc.getString())
}
func (sc *scanner) getFloat() float64 {
	sc.Scan()
	ret, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return ret
}
func (sc *scanner) getFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := range ret {
		ret[i] = sc.getFloat()
	}
	return ret
}

// math ----------------------------
func sum(ns ...int) int {
	var sum int
	for _, n := range ns {
		sum += n
	}
	return sum
}

func max(ns ...int) int {
	max := ns[0]
	for i := 1; i < len(ns); i++ {
		if max < ns[i] {
			max = ns[i]
		}
	}
	return max
}

func min(ns ...int) int {
	min := ns[0]
	for i := 1; i < len(ns); i++ {
		if min > ns[i] {
			min = ns[i]
		}
	}
	return min
}

func pow(a, b int) int {
	ret := 1
	for b > 0 {
		if b&1 > 0 {
			ret = ret * a
		}
		a = a * a
		b >>= 1
	}
	return ret
}