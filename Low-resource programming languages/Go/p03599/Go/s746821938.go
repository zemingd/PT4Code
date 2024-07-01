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
	A, B, C, D, E, F := sc.nextInt(), sc.nextInt(), sc.nextInt(), sc.nextInt(), sc.nextInt(), sc.nextInt()
	F /= 100
	dp := make([]bool, F+1)
	dp[0] = true
	for i := 1; i <= F; i++ {
		a, b := false, false
		if A <= i {
			a = dp[i-A]
		}
		if B <= i {
			b = dp[i-B]
		}
		dp[i] = a || b
	}
	waters := []int{}
	for water, b := range dp {
		if b {
			waters = append(waters, water)
		}
	}
	ansTotal := 100 * A
	ansSuger := 0
	for _, water := range waters {
		restForSuger := min(F*100-water*100, E*water)
		dp := make([]bool, restForSuger+1)
		dp[0] = true
		max := 0
		for i := 1; i <= restForSuger; i++ {
			c, d := false, false
			if C <= i {
				c = dp[i-C]
			}
			if D <= i {
				d = dp[i-D]
			}
			dp[i] = c || d
			if dp[i] {
				max = i
			}
		}
		if float64(ansSuger)/float64(ansTotal) < float64(max)/(float64(water*100)+float64(max)) {
			ansSuger = max
			ansTotal = water*100 + max
		}
	}

	fmt.Fprintln(wtr, ansTotal, ansSuger)
	wtr.Flush()
}
