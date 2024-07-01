package main

import (
	"bufio"
	_ "container/heap"
	"fmt"
	"os"
	_ "sort"
	"strconv"
)

// I/O
type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &Scanner{sc}
}

func (s *Scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *Scanner) nextInt() int {
	i, e := strconv.Atoi(s.nextStr())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *Scanner) nextFloat() float64 {
	f, e := strconv.ParseFloat(s.nextStr(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *Scanner) nextRuneSlice() []rune {
	return []rune(s.nextStr())
}

func (s *Scanner) nextIntSlice(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextInt()
	}
	return res
}

func (s *Scanner) nextFloatSlice(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextFloat()
	}
	return res
}

// Arithmetic
func max(nums ...int) int {
	m := nums[0]
	for _, i := range nums {
		if m < i {
			m = i
		}
	}
	return m
}

func min(nums ...int) int {
	m := nums[0]
	for _, i := range nums {
		if m > i {
			m = i
		}
	}
	return m
}

func abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}

func pow(x, y int) int {
	res := 1
	for i := 0; i < y; i++ {
		res *= x
	}
	return res
}

func ceil(a, b int) int {
	if a%b == 0 {
		return a / b
	} else {
		return a/b + 1
	}
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}

// Sort
type RuneSlice []rune

func (a RuneSlice) Len() int           { return len(a) }
func (a RuneSlice) Less(i, j int) bool { return a[i] < a[j] }
func (a RuneSlice) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

// Main
const MOD = int(1e+9) + 7
const INF = 1 << 60

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	defer wtr.Flush()
	N, X, Y := sc.nextInt(), sc.nextInt()-1, sc.nextInt()-1
	G := make([][]int, N)
	for i := 0; i < N-1; i++ {
		G[i] = append(G[i], i+1)
		G[i+1] = append(G[i+1], i)
	}
	G[X] = append(G[X], Y)
	G[Y] = append(G[Y], X)
	q := &Queue{}
	bfs := func(cur int, D []int) {
		for i := 0; i < len(G[cur]); i++ {
			next := G[cur][i]
			if D[next] == -1 {
				D[next] = D[cur] + 1
				q.push(Node{next})
			}
		}
	}
	set := make(map[int]int)
	for i := 0; i < N; i++ {
		D := make([]int, N)
		for i := 0; i < N; i++ {
			D[i] = -1
		}
		D[i] = 0
		q.push(Node{i})
		for !q.isEmpty() {
			bfs(q.pop().id, D)
		}
		for i := 0; i < N; i++ {
			set[D[i]]++
		}
	}
	for i := 1; i < N; i++ {
		fmt.Fprintln(wtr, set[i]/2)
	}
}

type Node struct {
	id int
}

type Queue struct {
	arr []Node
}

func (q *Queue) push(v Node) {
	q.arr = append(q.arr, v)
}

func (q *Queue) pop() Node {
	res := q.arr[0]
	q.arr = q.arr[1:]
	return res
}

func (q *Queue) isEmpty() bool {
	return len(q.arr) == 0
}
