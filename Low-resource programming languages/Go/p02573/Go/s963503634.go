package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type connection struct {
	a, b int
}

func main() {
	io, flush := NewIO()
	defer flush()

	n, m := io.ScanInt2()

	uf := NewUnionFind(n+1)
	for i := 0; i < m; i++ {
		a, b := io.ScanInt2()
		uf.Unite(a,b)
	}
	var max int
	for _, size := range uf.sizes {
		if max < size {
			max = size
		}
	}
	fmt.Println(max)
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
	s.Buffer(make([]byte, 10000000), 10000000)
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

func (io *IO) ScanInt2() (int, int) {
	return int(io.ScanInt64()), int(io.ScanInt64())
}

func (io *IO) ScanInt3() (int, int, int) {
	return int(io.ScanInt64()), int(io.ScanInt64()), int(io.ScanInt64())
}

func (io *IO) ScanInt4() (int, int, int, int) {
	return int(io.ScanInt64()), int(io.ScanInt64()), int(io.ScanInt64()), int(io.ScanInt64())
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
