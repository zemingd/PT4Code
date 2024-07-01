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

type Info struct {
	x, y, h int
}

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	N := sc.nextInt()
	info := make([]Info, N)
	for i := 0; i < N; i++ {
		info[i] = Info{sc.nextInt(), sc.nextInt(), sc.nextInt()}
	}
	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			hDecided := false
			var H int
			flag := true
			for i := 0; i < N; i++ {
				in := info[i]
				h, ok := f(x, y, in.x, in.y, in.h)
				if ok {
					if !hDecided {
						hDecided = true
						H = h
					}
					if H != h {
						flag = false
						break
					}
				} else {
					continue
				}
			}
			if flag {
				fmt.Fprintln(wtr, x, y, H)
				wtr.Flush()
				return
			}
		}
	}
}

func f(X, Y, cx, cy, ch int) (int, bool) {
	if ch == 0 {
		return 0, false
	}
	return (ch + abs(X-cx) + abs(Y-cy)), true
}
