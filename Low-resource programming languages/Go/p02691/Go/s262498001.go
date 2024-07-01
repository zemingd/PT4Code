package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

func abs(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	io := NewIo()
	defer io.Flush()

	// PARSE HELPER SESSION

	// STR := io.Next()
	// Log("string", STR)

	// F := io.NextFloat()
	// Log("float", F)

	// parsing int array
	N := io.NextInt()
	Logf("%v\n", N)
	var A [200000]int
	aaa := make(map[int][]int)
	keymap := make(map[int]int)
	var L, R [2000000]int
	lmap := make(map[int]int)
	rmap := make(map[int]int)
	for i := 0; i < N; i++ {
		A[i] = io.NextInt()
		aaa[A[i]] = append(aaa[A[i]], i)
		keymap[A[i]] = 1
		L[i] = i + A[i]
		lmap[L[i]]++
		R[i] = i - A[i]
		rmap[R[i]]++
	}
	Logf("%v\n", lmap)
	ans2 := 0
	for rk, rv := range rmap {
		if lv, ok := lmap[rk]; ok {
			Logf("%v %v %v\n", rk, rv, lv)
			ans2 += rv * lv
		}
		// if dd := lmap[rk] {
		// 	Logf("%v\n", dd)
		// }
	}
	fmt.Printf("%v\n", ans2)
	return

	// Logf("A %v\n", A[0:10])
	// Logf("aaa %v\n", aaa)
	keys := make([]int, 0, N)
	for k := range keymap {
		keys = append(keys, k)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(keys)))
	// Logf("sorted keys %v\n", keys)

	ans := 0
	count := 0
	for _, k := range keys {
		for _, v := range aaa[k] {
			// Logf("%v %v\n", k, v)
			// do 1st PART
			if v-A[v] >= 0 {
				for i := intMax(0, v-2*A[v]); i <= v-A[v]; i++ {
					if A[i] >= A[v] {
						continue
					}
					count++
					diff := abs(i, v) - (A[i] + A[v])
					if diff == 0 {
						Logf("A %v %v %v %v\n", v, i, A[v], A[i])
						ans++
					}
				}
			}
			// do 2nd part
			if v+A[v] < N {
				for i := v + A[v]; i <= intMin(N-1, v+2*A[v]); i++ {
					if A[i] > A[v] {
						continue
					}
					count++
					diff := abs(i, v) - (A[i] + A[v])
					if diff == 0 {
						Logf("B %v %v %v %v\n", v, i, A[v], A[i])
						ans++
					}
				}
			}

		}
	}
	Logf("--- %v\n", count)

	// sort.Sort(sort.Reverse(sort.IntSlice(A[:])))
	// Logf("A %v\n", A[0:10])
	// for i := 0; i < N; i++ {
	// 	for j := i + A[i]; j < N; j++ {
	// 		diff := abs(i, j) - (A[i] + A[j])
	// 		// Logf("%v %v %v\n", i, j, diff)
	// 		if diff == 0 {
	// 			ans++
	// 		}
	// 	}
	// }

	// ans := 0
	// for i := 0; i < N; i++ {
	// 	for j := i + A[i]; j < N; j++ {
	// 		diff := abs(i, j) - (A[i] + A[j])
	// 		// Logf("%v %v %v\n", i, j, diff)
	// 		if diff == 0 {
	// 			ans++
	// 		}
	// 	}
	// }
	fmt.Printf("%v\n", ans)

	// sort.Sort(sort.Reverse(sort.IntSlice(A[:])))
	// sort.Sort(sort.IntSlice(A[:]))

	// parsing string as byte array
	// var s [10000]byte
	// var si [10000]int
	// str := io.Next()
	// for i := 0; i < len(str); i++ {
	// 	s[i] = str[i]
	//  // "0" = 48, "A" = 65, "a" = 97
	//  si[i] = int(str[i]) - 48
	// }
	// Log("byte array", s[0:10])

	// OUTPUT GENERATION PART
	// ans := 0
	// fmt.Printf("%v\n", ans)

	// if ans > 0 {
	//   fmt.Printf("Yes\n")
	// } else {
	//   fmt.Printf("No\n")
	// }

	// BFS/DFS PART
	// visited := []int{}
	// bfs/dfs(1, neighbor, func(node int) {
	// 	visited = append(visited, node)
	// })
	// fmt.Println(visited)

	// DFS 2
	// var dp [2000000]int
	// nei := make(map[int][]int)
	// nei[0] = []int{1, 2}
	// nei[1] = []int{0}
	// nei[2] = []int{0, 3}
	// nei[3] = []int{2}
	// dfs2(0, nei, func(n, p int) {
	// 	Logf("%v -> %v\n", p, n)
	// 	dp[n] = p
	// }, func(n, p int) {
	// 	Logf("%v -> %v\n", n, p)
	// })
	// Logf("%v\n", dp[0:5])

	// COMBINATION
	// fmt.Printf("%d %d %d\n", N, M, intMax(N, M))
	// fmt.Printf("Lucas %d %d\n", combMod(N, M, 13), combination(N, M))
}

// Libraries

// Io helps parsing inputs from standard input for programming contest.
type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

// NewIo generates Io instance.
func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

// Flush flushes buffer. Don't forget to do this when you call Io.Printf/Io.PrintLn for final output.
func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

// NextLine parses line as string.
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

// Next parse next word as string.
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

// NextInt parse next word as Int.
func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

// NextFloat parses next word as float64.
func (io *Io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

// PrintLn does buffer write with linefeed.
func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

// Printf does formatted buffer write.
func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

// PrintIntLn prints Int array in a single line.
func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

// PrintStringLn prints string array in a single line.
func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

// Log print single value to standard output (contest server ignores this so you don't have to remove when finishing)
func Log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}

// Logf print formatted output to standard output (contest server ignores this so you don't have to remove when finishing)
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

func bfs(start int, nodes map[int][]int, fn func(int)) {
	frontier := []int{start}
	visited := map[int]bool{}
	next := []int{}

	for 0 < len(frontier) {
		next = []int{}
		for _, node := range frontier {
			visited[node] = true
			fn(node)
			for _, n := range bfsFrontier(node, nodes, visited) {
				next = append(next, n)
			}
		}
		frontier = next
	}
}

func bfsFrontier(node int, nodes map[int][]int, visited map[int]bool) []int {
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
	dfsRecur(node, nodes, map[int]bool{}, fn)
}

func dfsRecur(node int, nodes map[int][]int, v map[int]bool, fn func(int)) {
	v[node] = true
	fn(node)
	for _, n := range nodes[node] {
		if _, ok := v[n]; !ok {
			dfsRecur(n, nodes, v, fn)
		}
	}
}

// handles 2 function, one is before entering child tree, and another is
// after entering child tree.
func dfs2(node int, nodes map[int][]int, fn1, fn2 func(int, int)) {
	dfs2Recur(node, -1, nodes, map[int]bool{}, fn1, fn2)
}

func dfs2Recur(node, parent int, nodes map[int][]int, v map[int]bool, fn1, fn2 func(int, int)) {
	v[node] = true
	if fn1 != nil {
		fn1(node, parent)
	}
	for _, n := range nodes[node] {
		if _, ok := v[n]; !ok {
			dfs2Recur(n, node, nodes, v, fn1, fn2)
		}
	}
	if fn2 != nil {
		fn2(node, parent)
	}
}

// Stack data structure
type Stack struct {
	top  *Element
	size int
}

// Element is a struct for stack element
type Element struct {
	value interface{}
	next  *Element
}

// Len returns stack height
func (s *Stack) Len() int {
	return s.size
}

// Push put a element on the stack.
func (s *Stack) Push(value interface{}) {
	s.top = &Element{value, s.top}
	s.size++
}

// Pop picks out the last element from the stack.
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
	for i := range m {
		res = append(res, i)
	}
	return res
}

// var gcdmap map[int](map[int]int)
// func gcd(a, b int) int {
// 	ina := a
// 	inb := b
// 	if _, ok := gcdmap[a]; !ok {
// 		gcdmap[a] = make(map[int]int)
// 	}
// 	if _, ok := gcdmap[ina][inb]; ok {
// 		return gcdmap[ina][inb]
// 	}
// 	for b != 0 {
// 		t := b
// 		b = a % b
// 		a = t
// 	}
// 	gcdmap[ina][inb] = a
// 	return a
// }
