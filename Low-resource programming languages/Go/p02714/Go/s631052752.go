package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var s [10000]byte
var N int

func main() {
	io := NewIo()
	defer io.Flush()

	// AUTOGENERATE

	// STR := io.Next()
	// Log("string", STR)

	// F := io.NextFloat()
	// Log("float", F)

	// parsing int array
	N = io.NextInt()
	Logf("%v\n", N)
	// M := io.NextInt()
	// Logf("%v\n", M)
	// var A [200000]int
	// for i := 0 ; i < N; i++ {
	// 	A[i] = io.NextInt()
	// }
	// Logf("A %v\n", A[0:10])
	// sort.Sort(sort.Reverse(sort.IntSlice(A[:])))
	// sort.Sort(sort.IntSlice(A[:]))

	// parsing string as byte array
	str := io.Next()
	var rl, gl, bl [4000]int
	rc := 0
	gc := 0
	bc := 0
	for i := 0; i < len(str); i++ {
		s[i] = str[i]
		if int(s[i]) == 82 {
			rl[rc] = i
			rc++
		} else if int(s[i]) == 71 {
			gl[gc] = i
			gc++
		} else if int(s[i]) == 66 {
			bl[bc] = i
			bc++
		}
	}
	Log("byte array", s[0:10])
	Log("r", rl[0:rc])
	Log("g", gl[0:gc])
	Log("b", bl[0:bc])
	Log("count", rc*gc*bc)
	count := 0
	for ri := 0; ri < rc; ri++ {
		rii := rl[ri]
		for gi := 0; gi < gc; gi++ {
			gii := gl[gi]
			for bi := 0; bi < bc; bi++ {
				bii := bl[bi]
				// Logf("0 %v %v %v %v\n", rii, gii, bii, count)
				if rii < gii {
					if gii < bii { // r g b
						if bii-gii != gii-rii {
							count++
							// } else {
							// Logf("1 %v %v %v\n", rii, gii, bii)
						}
					} else if rii < bii { // r b g
						if gii-bii != bii-rii {
							count++
							// } else {
							// 	Logf("2 %v %v %v\n", rii, gii, bii)
						}
					} else { // b r g
						if gii-rii != rii-bii {
							count++
							// } else {
							// 	Logf("3 %v %v %v\n", rii, gii, bii)
						}
					}
				} else { // g r
					if rii < bii { // g r b
						if bii-rii != rii-gii {
							count++
							// } else {
							// 	Logf("4 %v %v %v\n", rii, gii, bii)
						}
					} else if gii < bii { // g b r
						if rii-bii != bii-gii {
							count++
							// } else {
							// 	Logf("5 %v %v %v\n", rii, gii, bii)
						}
					} else { // b g r
						if rii-gii != gii-bii {
							count++
							// } else {
							// 	Logf("6 %v %v %v\n", rii, gii, bii)
						}
					}
				}
			}
		}
	}

	// for i := 0; i < N-2; i++ {
	// 	if int(s[i]) == 82 {
	// 		for gi := 0 ; gi < gc; gi++ {
	// 		}
	// 		rl[rc] = i
	// 		rc++
	// 	} else if int(s[i]) == 71 {
	// 		gl[gc] = i
	// 		gc++
	// 	} else if int(s[i]) == 66 {
	// 		bl[bc] = i
	// 		bc++
	// 	}
	// 	count += part(i)
	// 	Logf("%v\n", count)
	// }

	// count := 0
	// for i := N - 1 - 2; i >= 0; i-- {
	// 	count += part(i)
	// 	Logf("%v\n", count)
	// }
	fmt.Printf("%v\n", count)
	// fmt.Printf("%d %d %d\n", N, M, intMax(N, M))
	// fmt.Printf("Lucas %d %d\n", combMod(N, M, 13), combination(N, M))

	// write your own code here

}

func part(i int) int {
	count := 0
	for j := i + 1; j < N; j++ {
		if s[i] == s[j] {
			continue
		}
		for k := j + 1; k < N; k++ {
			if (k - j) == (j - i) {
				continue
			}
			if s[i] == s[k] || s[j] == s[k] {
				continue
			}
			count++
		}
	}
	return count
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

// Stack data structure
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

// powerInt (use math.Pow() for float parameters)
func powerInt(n, p int) int {
	tmp := 1
	for i := 0; i < n; i++ {
		tmp *= p
	}
	return tmp
}

func findDivisors(n int, a *[]int) {
	if n == 1 {
		return
	}

	sqrt := int(math.Sqrt(float64(n)))
	for i := 2; i <= sqrt; i++ {
		if n%i == 0 {
			*a = append(*a, i)
			*a = append(*a, n/i)
		}
	}
	*a = append(*a, n)
}

func removeDuplicate(a []int) []int {
	m := make(map[int]bool)
	for i := 0; i < len(a); i++ {
		m[a[i]] = true
	}
	res := []int{}
	for i, _ := range m {
		res = append(res, i)
	}
	return res
}
