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
type RuneSlice []rune

func (a RuneSlice) Len() int           { return len(a) }
func (a RuneSlice) Less(i, j int) bool { return a[i] < a[j] }
func (a RuneSlice) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	mod := int(1e+9) + 7
	N := sc.nextInt()
	A := sc.nextIntSlice(N)
	ans := 1
	n := N - 1
	set := make(map[int]int)
	if N%2 == 0 {
		for i := 0; i < N; i++ {
			set[A[i]]++
		}
		ok := true
		for i := 1; i <= n; i += 2 {
			if set[i] != 2 {
				ok = false
				break
			}
			ans *= 2
			ans %= mod
		}
		if !ok {
			ans = 0
		}
	} else {
		for i := 0; i < N; i++ {
			set[A[i]]++
		}
		ok := true
		for i := 0; i <= n; i += 2 {
			if i == 0 {
				if set[i] != 1 {
					ok = false
					break
				}
			} else {
				if set[i] != 2 {
					ok = false
					break
				}
				ans *= 2
				ans %= mod
			}
		}
		if !ok {
			ans = 0
		}
	}

	fmt.Fprintln(wtr, ans)
	wtr.Flush()
}
