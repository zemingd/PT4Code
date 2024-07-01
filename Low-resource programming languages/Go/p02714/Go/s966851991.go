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
	N := sc.nextInt()
	S := sc.nextRuneSlice()
	R := make([]int, N+1)
	G := make([]int, N+1)
	B := make([]int, N+1)
	for i := 0; i < N; i++ {
		if S[i] == 'R' {
			R[i+1] = 1
		} else if S[i] == 'G' {
			G[i+1] = 1
		} else {
			B[i+1] = 1
		}
	}
	for i := 1; i <= N; i++ {
		R[i] += R[i-1]
		G[i] += G[i-1]
		B[i] += B[i-1]
	}
	ans := 0
	for i := 0; i < N; i++ {
		s1 := S[i]
		for j := i + 1; j < N; j++ {
			s2 := S[j]
			if s1 == s2 {
				continue
			}
			diff := j - i
			if s1 != 'R' && s2 != 'R' {
				ans += R[min(j+diff, N)] - R[min(j+1, N)]
				ans += R[N] - R[min(j+diff+1, N)]
			} else if s1 != 'G' && s2 != 'G' {
				ans += G[min(j+diff, N)] - G[min(j+1, N)]
				ans += G[N] - G[min(j+diff+1, N)]
			} else {
				ans += B[min(j+diff, N)] - B[min(j+1, N)]
				ans += B[N] - B[min(j+diff+1, N)]
			}
		}
	}

	fmt.Fprintln(wtr, ans)
}
