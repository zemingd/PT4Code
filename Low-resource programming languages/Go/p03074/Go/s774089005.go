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

type Num struct {
	count int
	isOne bool
}

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	defer wtr.Flush()
	N, K := sc.nextInt(), sc.nextInt()
	S := sc.nextRuneSlice()
	D := []Num{}
	now := S[0]
	cnt := 1
	for i := 1; i < N; i++ {
		if now == S[i] {
			cnt++
		} else {
			D = append(D, Num{cnt, now == '1'})
			if now == '1' {
				now = '0'
			} else {
				now = '1'
			}
			cnt = 1
		}
	}
	D = append(D, Num{cnt, now == '1'})
	ans, sum := 0, 0
	r := 0
	for l := 0; l < len(D); l++ {
		var nextRight int
		if D[l].isOne {
			nextRight = min(len(D), l+2*K+1)
		} else {
			nextRight = min(len(D), l+2*K)
		}
		for r < nextRight {
			sum += D[r].count
			r++
		}
		if ans < sum {
			ans = sum
		}
		sum -= D[l].count
	}

	fmt.Fprintln(wtr, ans)
}
