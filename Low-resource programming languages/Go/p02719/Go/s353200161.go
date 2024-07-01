package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func replace(n, k int) int {
	if n > k {
		return n - k
	} else {
		return k - n
	}
}

func main() {
	io := NewIo()
	defer io.Flush()

	// AUTOGENERATE

	// STR := io.Next()
	// Log("string", STR)

	// F := io.NextFloat()
	// Log("float", F)

	// parsing int array
	N := io.NextInt()
	Logf("%v\n", N)
	K := io.NextInt()
	Logf("%v\n", K)
	min := K // 1000000000000000000
	Log("min", min)
	if N < K {
		fmt.Printf("%v\n", intMin(K-N, N))
		return
	}
	if N > K && N > 3*K {
		N = 3 * K
	}
	for i := 0; i < K; i++ {
		N = replace(N, K)
		Logf("%d %d %d\n", N, K, min)
		if min > N {
			min = N
		}
	}
	fmt.Printf("%v\n", min)
	// var a [200000]int
	// for i := 0 ; i < N; i++ {
	// 	a[i] = io.NextInt()
	// }
	// Logf("a %v\n", a[0:10])
	// sort.Sort(sort.Reverse(sort.IntSlice(a[:])))}

	// parsing string as byte array
	// var b [10000]byte
	// str := io.Next()
	// for i := 0 ; i < len(str); i++ {
	// 	b[i] = string[i]
	// }
	// Log("byte array", b)

	// fmt.Printf("%d %d %d\n", N, M, intMax(N, M))
	// fmt.Printf("Lucas %d %d\n", combMod(N, M, 13), combination(N, M))

	// write your own code here

}

// Libraries

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

// NewIo
func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

// Flush
func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

// NextLine
func (io *Io) NextLine() string {
	var buffer []byte
	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

// Next
func (io *Io) Next() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

// NextInt
func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

// NextFloat
func (io *Io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

// PrintLn
func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

// Printf
func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

// PrintIntLn
func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

// PrintStringLn
func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

// Log
func Log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}

// Log format for standard error output
func Logf(format string, a ...interface{}) {
	fmt.Fprintf(os.Stderr, format, a...)
}

func intMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// direct calculation of combination
// n, m should be "small"
func combination(n, m int) int {
	if m > n {
		return 0
	} else if m == n || m == 0 {
		return 1
	} else {
		res := 1
		for i := 0; i < m; i++ {
			res *= (n - i)
		}
		for i := 1; i <= m; i++ {
			res /= i
		}
		return res
	}
}

// caluclate combination modulo based on Lucas theorem
func lucas(n, m, p int) int {
	ntemp := n
	mtemp := m
	res := 1
	for i := 0; i < 100; i++ {
		// fmt.Printf("ntemp: %d\n", ntemp)
		nreminder := ntemp % p
		ntemp = ntemp / p
		mreminder := mtemp % p
		mtemp = mtemp / p
		res = res * (combination(nreminder, mreminder) % p)
		if ntemp == 0 {
			break
		}
	}
	return res % p
}

func combMod(n, m, p int) int {
	return lucas(n, m, p)
}

// BFS/DFS
//
// visited := []int{}
// dfs(1, neighbor, func(node int) {
// 	visited = append(visited, node)
// })
// fmt.Println(visited)

func bfs(start int, nodes map[int][]int, fn func(int)) {
	frontier := []int{start}
	visited := map[int]bool{}
	next := []int{}

	for 0 < len(frontier) {
		next = []int{}
		for _, node := range frontier {
			visited[node] = true
			fn(node)
			for _, n := range bfs_frontier(node, nodes, visited) {
				next = append(next, n)
			}
		}
		frontier = next
	}
}

func bfs_frontier(node int, nodes map[int][]int, visited map[int]bool) []int {
	next := []int{}
	iter := func(n int) bool { _, ok := visited[n]; return !ok }
	for _, n := range nodes[node] {
		if iter(n) {
			next = append(next, n)
		}
	}
	return next
}

func dfs(node int, nodes map[int][]int, fn func(int)) {
	dfs_recur(node, nodes, map[int]bool{}, fn)
}

func dfs_recur(node int, nodes map[int][]int, v map[int]bool, fn func(int)) {
	v[node] = true
	fn(node)
	for _, n := range nodes[node] {
		if _, ok := v[n]; !ok {
			dfs_recur(n, nodes, v, fn)
		}
	}
}

// handles 2 function, one is before entering child tree, and another is
// after entering child tree.
func dfs2(node int, nodes map[int][]int, fn1, fn2 func(int, int)) {
	dfs2_recur(node, -1, nodes, map[int]bool{}, fn1, fn2)
}

func dfs2_recur(node, parent int, nodes map[int][]int, v map[int]bool, fn1, fn2 func(int, int)) {
	v[node] = true
	fn1(node, parent)
	for _, n := range nodes[node] {
		if _, ok := v[n]; !ok {
			dfs2_recur(n, node, nodes, v, fn1, fn2)
		}
	}
	fn2(node, parent)
}

type Stack struct {
	top  *Element
	size int
}

type Element struct {
	value interface{}
	next  *Element
}

func (s *Stack) Len() int {
	return s.size
}

func (s *Stack) Push(value interface{}) {
	s.top = &Element{value, s.top}
	s.size++
}

func (s *Stack) Pop() (value interface{}) {
	if s.size > 0 {
		value, s.top = s.top.value, s.top.next
		s.size--
		return
	}
	return nil
}
