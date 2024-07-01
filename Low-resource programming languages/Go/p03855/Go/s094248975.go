package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var (
	readString func() string
	stdout     *bufio.Writer
)

func init() {
	readString = newReadString(os.Stdin)
	stdout = bufio.NewWriter(os.Stdout)
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

func readInt() int {
	return int(readInt64())
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readIntSlice(n int) []int {
	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = readInt()
	}
	return b
}

func readLengthAndSlice() (int, []int) {
	n := readInt()
	return n, readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

func eprintln(args ...interface{}) (int, error) {
	return fmt.Fprintln(os.Stderr, args...)
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int

// -----------------------------------------------------------------------------

func main() {
	defer stdout.Flush()

	N := readInt()
	K := readInt()
	L := readInt()

	p := make([]int, K)
	q := make([]int, K)
	xu := NewUnionFind(N)
	for i := range p {
		p[i] = readInt() - 1
		q[i] = readInt() - 1
		xu.Union(p[i], q[i])
	}

	r := make([]int, L)
	s := make([]int, L)
	yu := NewUnionFind(N)
	for i := range r {
		r[i] = readInt() - 1
		s[i] = readInt() - 1
		yu.Union(r[i], s[i])
	}

	m := make(map[int]map[int]int)
	for i := 0; i < N; i++ {
		x := xu.Find(i)
		y := yu.Find(i)
		if m[x] == nil {
			m[x] = make(map[int]int)
		}
		m[x][y]++
	}
	sp := ""
	for i := 0; i < N; i++ {
		x := xu.Find(i)
		y := yu.Find(i)
		printf("%s%d", sp, m[x][y])
		sp = " "
	}
	println()

}

// -----------------------------------------------------------------------------

type UnionFind struct {
	parent []int
	rank   []int
	size   []int
}

// Initialize UnionFind for [0 - n) elements.
// Use n+1 if you need [1 - n] elements
func NewUnionFind(n int) *UnionFind {
	u := &UnionFind{
		parent: make([]int, n),
		rank:   make([]int, n),
		size:   make([]int, n),
	}

	for i := range u.parent {
		u.parent[i] = i
		u.rank[i] = 0
		u.size[i] = 1
	}

	return u
}

func (u *UnionFind) Find(i int) int {
	if u.parent[i] == i {
		return i
	}
	p := u.Find(u.parent[i])
	u.parent[i] = p
	return p
}

func (u *UnionFind) Union(i, j int) {
	p := u.Find(i)
	q := u.Find(j)

	if p == q {
		return
	}

	if u.rank[p] < u.rank[q] {
		p, q = q, p
	}
	u.parent[p] = q
	if u.rank[p] == u.rank[q] {
		u.rank[q]++
	}
	u.size[q] += u.size[p]
}

func (u *UnionFind) Size(i int) int {
	p := u.Find(i)
	return u.size[p]
}
