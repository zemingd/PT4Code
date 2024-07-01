package main

import (
	"bufio"
	"fmt"
	"os"
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

// Sort
type Val struct {
	id, num int
}
type ByNum []Val

func (a ByNum) Len() int           { return len(a) }
func (a ByNum) Less(i, j int) bool { return a[i].num < a[j].num }
func (a ByNum) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	N := sc.nextInt()
	A := make([]int, N+2)
	A[0] = 0
	for i := 1; i <= N; i++ {
		A[i] = sc.nextInt()
	}
	A[N+1] = 0
	S := make([]int, N+1)
	S[0] = abs(A[0] - A[1])
	for i := 1; i <= N; i++ {
		S[i] = S[i-1] + abs(A[i]-A[i+1])
	}
	for i := 1; i <= N; i++ {
		var total int
		if 2 <= i && i <= N-1 {
			total = S[N] - S[i] + S[i-2] + abs(A[i-1]-A[i+1])
		} else if i == 1 {
			total = S[N] - S[i] + abs(A[i-1]-A[i+1])
		} else {
			total = S[N-2] + abs(A[i-1]-A[i+1])
		}
		fmt.Fprintln(wtr, total)
	}

	wtr.Flush()
}
