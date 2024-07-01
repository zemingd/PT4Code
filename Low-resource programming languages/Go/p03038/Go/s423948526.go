package main

import (
	"bufio"
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

type Card struct {
	b, c int
}

type ByC []Card

func (a ByC) Len() int           { return len(a) }
func (a ByC) Less(i, j int) bool { return a[i].c < a[j].c }
func (a ByC) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	defer wtr.Flush()
	N, M := sc.nextInt(), sc.nextInt()
	A := sc.nextIntSlice(N)
	C := make([]Card, M)
	for i := 0; i < M; i++ {
		C[i] = Card{sc.nextInt(), sc.nextInt()}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(A)))
	sort.Sort(sort.Reverse(ByC(C)))
	ans := []int{}
	cntA := 0
	cntC := 0
	for i := 0; i < N; i++ {
		a := A[cntA]
		if cntC >= M {
			ans = append(ans, a)
			cntA++
		} else {
			if a < C[cntC].c {
				ans = append(ans, C[cntC].c)
				C[cntC].b -= 1
				if C[cntC].b == 0 {
					cntC++
				}
			} else {
				ans = append(ans, a)
				cntA++
			}
		}
	}

	sum := 0
	for i := 0; i < N; i++ {
		sum += ans[i]
	}
	fmt.Fprintln(wtr, sum)
}
