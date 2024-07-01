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

func readLengthAndSlice() []int {
	n := readInt()
	return readIntSlice(n)
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdout, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdout, args...)
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func minUint(a, b uint) uint {
	if a < b {
		return a
	}
	return b
}

func minInt64(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func minUint64(a, b uint64) uint64 {
	if a < b {
		return a
	}
	return b
}

func maxInt(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func maxUint(a, b uint) uint {
	if a < b {
		return b
	}
	return a
}
func maxInt64(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func maxUint64(a, b uint64) uint64 {
	if a < b {
		return b
	}
	return a
}

func absInt(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func absInt64(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

// readString() string
// readInt() int
// readIntSlice(n int) []int
// readLengthAndSlice() []int
func main() {
	defer stdout.Flush()

	n := readInt()
	k := readInt()
	l := readInt()

	road := NewUnionFind(n + 1)

	for i := 0; i < k; i++ {
		p := readInt()
		q := readInt()
		road.Union(p, q)
	}

	roadRail := NewUnionFind(n + 1)

	for i := 0; i < l; i++ {
		r := readInt()
		s := readInt()
		if road.Find(r) == road.Find(s) {
			roadRail.Union(r, s)
		}
	}

	for i := 1; i <= n; i++ {
		println(roadRail.Size(i))
	}
}

type UnionFind struct {
	parent []int
	rank   []int
	size   []int64
}

func NewUnionFind(n int) *UnionFind {
	u := &UnionFind{
		parent: make([]int, n),
		rank:   make([]int, n),
		size:   make([]int64, n),
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
	pi := u.Find(i)
	pj := u.Find(j)

	if pi == pj {
		return
	}

	if u.rank[pi] > u.rank[pj] {
		u.parent[pj] = pi
		u.size[pi] += u.size[pj]
	} else {
		u.parent[pi] = pj
		if u.rank[pi] == u.rank[pj] {
			u.rank[pj]++
		}
		u.size[pj] += u.size[pi]
	}
}

func (u *UnionFind) Size(i int) int64 {
	return u.size[u.Find(i)]
}
