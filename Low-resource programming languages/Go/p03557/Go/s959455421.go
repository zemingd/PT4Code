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
	N := sc.nextInt()
	A := sc.nextIntSlice(N)
	B := sc.nextIntSlice(N)
	C := sc.nextIntSlice(N)
	sort.Ints(A)
	sort.Ints(B)
	sort.Ints(C)
	bToC := make([]int, N)
	for i := 0; i < N; i++ {
		lowerC := sort.Search(N, func(index int) bool {
			return C[index] > B[i]
		})
		bToC[i] = N - lowerC
	}
	cumulativeSum := make([]int, N+1)
	cumulativeSum[0] = 0
	for i := 0; i < N; i++ {
		cumulativeSum[i+1] = cumulativeSum[i] + bToC[i]
	}
	count := 0
	for i := 0; i < N; i++ {
		lowerB := sort.Search(N, func(index int) bool {
			return B[index] > A[i]
		})
		count += cumulativeSum[N] - cumulativeSum[lowerB]
	}
	fmt.Println(count)
}
