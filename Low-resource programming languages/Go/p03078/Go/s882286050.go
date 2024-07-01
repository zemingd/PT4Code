package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
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
	X, Y, Z, K := sc.nextInt(), sc.nextInt(), sc.nextInt(), sc.nextInt()
	A := sc.nextIntSlice(X)
	B := sc.nextIntSlice(Y)
	C := sc.nextIntSlice(Z)
	sort.Sort(sort.Reverse(sort.IntSlice(A)))
	sort.Sort(sort.Reverse(sort.IntSlice(B)))
	sort.Sort(sort.Reverse(sort.IntSlice(C)))
	pq := &PQ{}
	heap.Init(pq)
	var D []int
	done := make(map[string]bool)
	heap.Push(pq, Element{A[0] + B[0] + C[0], 0, 0, 0})
	done[toS(0, 0, 0)] = true
	next := [][]int{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}
	for i := 0; i < K; i++ {
		el := heap.Pop(pq).(Element)
		D = append(D, el.cost)
		a, b, c := el.a, el.b, el.c
		for i := 0; i < 3; i++ {
			na, nb, nc := a+next[i][0], b+next[i][1], c+next[i][2]
			if na < X && nb < Y && nc < Z && !done[toS(na, nb, nc)] {
				heap.Push(pq, Element{A[na] + B[nb] + C[nc], na, nb, nc})
				done[toS(na, nb, nc)] = true
			}
		}
	}

	for i := 0; i < K; i++ {
		fmt.Fprintln(wtr, D[i])
	}
}

func toS(a, b, c int) string {
	return strconv.Itoa(a) + "-" + strconv.Itoa(b) + "-" + strconv.Itoa(c)
}

type Element struct {
	cost, a, b, c int
}

type PQ []Element

func (pq PQ) Len() int           { return len(pq) }
func (pq PQ) Less(i, j int) bool { return pq[i].cost > pq[j].cost }
func (pq PQ) Swap(i, j int)      { pq[i], pq[j] = pq[j], pq[i] }

func (pq *PQ) Push(x interface{}) {
	*pq = append(*pq, x.(Element))
}

func (pq *PQ) Pop() interface{} {
	old := *pq
	n := len(old)
	x := old[n-1]
	*pq = old[0 : n-1]
	return x
}
