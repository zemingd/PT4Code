package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

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

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	N := sc.nextInt()
	A := sc.nextIntSlice(N)
	maxIndex := 0
	max := A[0]
	for i := 1; i < N; i++ {
		if A[i] > max {
			maxIndex = i
			max = A[i]
		}
	}
	sort.Ints(A)
	for i := 0; i < N; i++ {
		if i == maxIndex {
			fmt.Fprintln(wtr, A[N-2])
		} else {
			fmt.Fprintln(wtr, max)
		}
	}
	wtr.Flush()
}
