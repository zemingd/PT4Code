package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//     dig  keta
var dp [1000][10]int

func keta(n, p int) int {
	tmp := 1
	for i := 0; i < n; i++ {
		tmp *= p
	}
	return tmp
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
	K := io.NextInt()
	Logf("%v\n", K)
	if K <= 10 {
		fmt.Printf("%v\n", K)
		return
	}

	q := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	Logf("%v\n", q)
	// q = append(q, 10)
	// Logf("%v\n", q)
	// tmp := q[0]
	// q = q[1:]
	// Logf("%v %v\n", tmp, q)
	var tmp int
	for i := 0; i < K; i++ {
		tmp = q[0]
		q = q[1:]
		// Logf("%v th trial %d\n", 1+i, tmp)
		dig := tmp % 10
		if dig != 0 {
			q = append(q, 10*tmp+dig-1)
		}
		q = append(q, 10*tmp+dig)
		if dig != 9 {
			q = append(q, 10*tmp+dig+1)
		}
	}
	fmt.Printf("%v\n", tmp)
	return

	for i := 0; i < 10; i++ {
		dp[0][i] = 1
	}
	var tmpB [100]int
	tmpB[0] = 10
	tmpA := 9
	tmpD := K - 9
	tmpC := 10
	for j := 1; j < 10; j++ {
		for i := 0; i < 10; i++ {
			tmp := 0
			if i > 0 {
				tmp += dp[j-1][i-1]
				tmpD -= dp[j-1][i-1]
			} else if i < 9 {
				tmp += dp[j-1][i+1]
				tmpD -= dp[j-1][i+1]
			} else {
				tmpC += keta(1, 10)
				tmpD -= dp[j-1][i]
			}
			dp[j][i] = tmp
			if i > 0 {
				tmpA += tmp
			}
			if tmpD < 0 {
				break
			}
		}
		tmpB[j] = tmpA
		// Logf("j:%d tmpA %d\n", j, tmpA)
	}
	Logf("%v\n", dp[0:10])
	Logf("%v\n", tmpB[0:10])
	return

	startKeta := 0
	for i := 0; i < 10; i++ {
		if tmpB[i] == K {
			fmt.Printf("%v\n", keta(i+1, 10))
			return
		}
		if tmpB[i] > K {
			startKeta = i
			break
		}
	}
	Logf("%d startketa\n", startKeta)

	tmpPlace := K - tmpB[startKeta-1]
	tmpAnswer := keta(startKeta, 10)
	Logf("look for %d th value in %d digit number\n", tmpPlace, startKeta+1)
	for i := startKeta; i >= 0; i-- {
		for j := 0; j < 10; j++ {
			if i == startKeta && j == 0 {
				continue
			}
			Logf("i, j %d %d, tmpPlace %d tmpAnswer %d\n", i, j, tmpPlace, tmpAnswer)
			if tmpPlace < dp[i][j] {
				tmpAnswer += j * keta(i, 10)
				break
			} else {
				tmpPlace -= dp[i][j]
			}
		}
	}
	// tmpAnswer := 1
	// 	for i := 0; i < 10; i++ {
	// 		if K == tmpB[i] {
	// 			fmt.Printf("%v\n", tmpAnswer)
	// 			return
	// 		} else if K < tmpB[i] {
	// 			Logf("tmpB[%d] %d > K %d, need %d keta, >=%d, <%d\n", i, tmpB[i], K, i+1, tmpAnswer, tmpAnswer*10)
	// 			for j := i; j >= 0; j-- {
	// 				if j =
	// 				Logf("%d %d\n", dp[j], j)
	// 			}
	// 			return
	// 		}
	// 		tmpAnswer *= 10
	// 	}
	// }
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
