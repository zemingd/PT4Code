package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	io, flush := NewIO()
	defer flush()

	n, m, k := io.ScanInt(), io.ScanInt(), io.ScanInt()
	friends := io.Scan2DInts(m, 2)
	blocks := io.Scan2DInts(k, 2)
	uf := NewUnionFind(n)
	friendCounts := make([]int, n)
	blockMap := map[int][]int{}
	for _, f := range friends {
		p1, p2 := f[0]-1, f[1]-1
		friendCounts[p1]++
		friendCounts[p2]++
		uf.Unite(p1, p2)
	}
	for _, b := range blocks {
		p1, p2 := b[0]-1, b[1]-1
		blockMap[p1] = append(blockMap[p1], p2)
		blockMap[p2] = append(blockMap[p2], p1)
	}
	var friendCandidates []string
	for i := 0; i < n; i++ {
		friendCandidate := uf.Size(i) - 1 - friendCounts[i]
		for _, b := range blockMap[i] {
			if uf.Same(i, b) {
				friendCandidate--
			}
		}
		friendCandidates = append(friendCandidates, strconv.Itoa(friendCandidate))
	}
	io.Println(strings.Join(friendCandidates, " "))
}

type IO struct {
	scanner *bufio.Scanner
	writer  *bufio.Writer
}

func NewIO() (*IO, func()) {
	io := &IO{
		scanner: newScanner(),
		writer:  newWriter(),
	}
	return io, func() { io.writer.Flush() }
}

func newScanner() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Buffer(make([]byte, 1000005), 1000005)
	s.Split(bufio.ScanWords)
	return s
}

func newWriter() *bufio.Writer {
	return bufio.NewWriter(os.Stdout)
}

func (io *IO) ScanBytes() []byte {
	if !io.scanner.Scan() {
		panic("scan string failed")
	}
	return io.scanner.Bytes()
}

func (io *IO) ScanString() string {
	if !io.scanner.Scan() {
		panic("scan string failed")
	}
	return io.scanner.Text()
}

func (io *IO) ScanStrings(n int) []string {
	strs := make([]string, n)
	for i := 0; i < n; i++ {
		strs[i] = io.ScanString()
	}
	return strs
}

func (io *IO) Scan2DStrings(y, x int) [][]string {
	strings := make([][]string, y)
	for i := 0; i < y; i++ {
		strings[i] = io.ScanStrings(x)
	}
	return strings
}

func (io *IO) Scan2DGraph(y int) [][]string {
	strs := make([][]string, y)
	for i := 0; i < y; i++ {
		strs[i] = strings.Split(io.ScanString(), "")
	}
	return strs
}

func (io *IO) ScanInt() int {
	return int(io.ScanInt64())
}

func (io *IO) ScanInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = io.ScanInt()
	}
	return ints
}

func (io *IO) Scan2DInts(y, x int) [][]int {
	ints := make([][]int, y)
	for i := 0; i < y; i++ {
		ints[i] = io.ScanInts(x)
	}
	return ints
}

func (io *IO) ScanInt64() int64 {
	i, err := strconv.ParseInt(io.ScanString(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *IO) ScanFloat64() float64 {
	i, _ := strconv.ParseFloat(io.ScanString(), 64)
	return i
}

func (io *IO) ScanFloat64s(n int) []float64 {
	floats := make([]float64, n)
	for i := 0; i < n; i++ {
		floats[i] = io.ScanFloat64()
	}
	return floats
}

func (io *IO) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

type UnionFind struct {
	roots []int
	sizes []int
}

func NewUnionFind(n int) *UnionFind {
	u := &UnionFind{}
	for i := 0; i < n; i++ {
		u.roots = append(u.roots, i)
		u.sizes = append(u.sizes, 1)
	}
	return u
}

func (u *UnionFind) RootOf(i int) int {
	if u.roots[i] == i {
		return i
	} else {
		u.roots[i] = u.RootOf(u.roots[i])
		return u.roots[i]
	}
}

func (u *UnionFind) Unite(x, y int) {
	rootX := u.RootOf(x)
	rootY := u.RootOf(y)
	if rootX == rootY {
		return
	}
	u.sizes[rootX] += u.sizes[rootY]
	u.roots[rootY] = rootX
}

func (u *UnionFind) Same(x, y int) bool {
	return u.RootOf(x) == u.RootOf(y)
}

func (u *UnionFind) Size(x int) int {
	return u.sizes[u.RootOf(x)]
}
