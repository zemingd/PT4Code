package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var buff []byte

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat64() float64 {
	sc.Scan()
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return f
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextInts(n int) (r []int) {
	r = make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

var dy = []int{0, 1, 0, -1}
var dx = []int{1, 0, -1, 0}
var MAX = math.MaxInt64

func maxInt(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func minInt(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func absInt(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

type Pair struct {
	a, b int
}

type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}
func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Pairs) Less(i, j int) bool {
	if p[i].a == p[j].a {
		return p[i].b < p[j].b
	}
	return p[i].a < p[j].a
}

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buff, bufio.MaxScanTokenSize*1024)
	log.SetFlags(log.Lshortfile)
}

func main() {
	N := nextInt()
	M := nextInt()
	uf := NewUnionFind(N)
	for i := 0; i < M; i++ {
		a := nextInt() - 1
		b := nextInt() - 1
		uf.Unit(a, b)
	}
	ans := 0
	for i := 0; i < len(uf.link); i++ {
		ans = maxInt(ans, len(uf.link[i]))
	}
	fmt.Println(ans)
}

type UnionFind struct {
	par  []int
	size []int
	link [][]int
}

func NewUnionFind(count int) *UnionFind {
	par := make([]int, count)
	size := make([]int, count)
	link := make([][]int, count)
	for i := 0; i < count; i++ {
		link[i] = make([]int, 1)
	}
	for i := 0; i < count; i++ {
		par[i] = i
		size[i] = 1
		link[i][0] = i
	}
	return &UnionFind{par: par, size: size, link: link}
}

func (uf *UnionFind) Find(a int) int {
	for uf.par[a] != a {
		uf.par[a] = uf.par[uf.par[a]]
		a = uf.par[a]
	}
	return a
}

func (uf *UnionFind) Unit(a, b int) {
	a = uf.Find(a)
	b = uf.Find(b)
	if a != b {
		if uf.size[a] > uf.size[b] {
			a, b = b, a
		}
		uf.par[a] = b
		uf.size[b] += uf.size[a]
		uf.link[b] = append(uf.link[b], uf.link[a]...)
	}
}

func (uf *UnionFind) Same(a, b int) bool {
	return uf.Find(a) == uf.Find(b)
}

func (uf UnionFind) Weight(a int) int {
	return uf.size[uf.Find(a)]
}
