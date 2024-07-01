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
func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	S := sc.nextStr()
	N := len(S)
	R := make([]int, N)
	count := 0
	for i := 0; i < N; i++ {
		if S[i] == 'R' {
			count++
		} else {
			if count%2 == 0 {
				R[i-1] += count / 2
				R[i] += count / 2
			} else {
				R[i-1] += count/2 + 1
				R[i] += count / 2
			}
			count = 0
		}
	}
	count = 0
	for i := N - 1; i >= 0; i-- {
		if S[i] == 'L' {
			count++
		} else {
			if count%2 == 0 {
				R[i] += count / 2
				R[i+1] += count / 2
			} else {
				R[i] += count / 2
				R[i+1] += count/2 + 1
			}
			count = 0
		}
	}

	for i := 0; i < N; i++ {
		if i != 0 {
			fmt.Fprint(wtr, " ")
		}
		fmt.Fprint(wtr, R[i])
	}
	fmt.Fprintln(wtr)
	wtr.Flush()
}
