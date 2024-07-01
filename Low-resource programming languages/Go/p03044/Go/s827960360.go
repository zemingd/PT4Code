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

func ceil(a, b int) int {
	if a%b == 0 {
		return a / b
	} else {
		return a/b + 1
	}
}

// Sort
type RuneSlice []rune

func (a RuneSlice) Len() int           { return len(a) }
func (a RuneSlice) Less(i, j int) bool { return a[i] < a[j] }
func (a RuneSlice) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

// Main
const MOD = int(1e+9) + 7
const INF = 1 << 60

type Edge struct {
	to, w int
}

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	N := sc.nextInt()
	E := make([][]Edge, N)
	for i := 0; i < N-1; i++ {
		u, v, w := sc.nextInt()-1, sc.nextInt()-1, sc.nextInt()
		E[u] = append(E[u], Edge{v, w})
		E[v] = append(E[v], Edge{u, w})
	}
	C := make([]int, N)
	C[0] = 0
	done := make([]bool, N)
	var search func(cur int)
	search = func(cur int) {
		done[cur] = true
		for i := 0; i < len(E[cur]); i++ {
			next, w := E[cur][i].to, E[cur][i].w
			if done[next] {
				continue
			}
			if w%2 == 0 {
				C[next] = C[cur]
			} else {
				C[next] = C[cur] ^ 1
			}
			search(next)
		}
	}

	for i := 0; i < N; i++ {
		if !done[i] {
			search(i)
		}
	}
	for i := 0; i < N; i++ {
		fmt.Fprintln(wtr, C[i])
	}
	wtr.Flush()
}
