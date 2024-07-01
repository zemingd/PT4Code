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

type Comment struct {
	x, y int
}

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	N := sc.nextInt()
	arr := make([][]Comment, N)
	for i := 0; i < N; i++ {
		A := sc.nextInt()
		ar := make([]Comment, A)
		for j := 0; j < A; j++ {
			x, y := sc.nextInt()-1, sc.nextInt()
			ar[j] = Comment{x, y}
		}
		arr[i] = ar
	}
	var dfs func(n int, trueList []int) bool
	dfs = func(n int, trueList []int) bool {
		for _, comment := range arr[n] {
			x, y := comment.x, comment.y
			if trueList[x] == -1 {
				trueList[x] = y
				if y == 1 {
					ok := dfs(x, trueList)
					if !ok {
						return false
					}
				}
			} else if trueList[x] != y {
				return false
			}
		}
		return true
	}
	trueListTmp := make([]int, N)
	for i := 0; i < N; i++ {
		trueListTmp[i] = -1
	}
	ans := 0
	for i := 0; i < N; i++ {
		trueList := make([]int, N)
		copy(trueList, trueListTmp)
		trueList[i] = 1
		ok := dfs(i, trueList)
		if !ok {
			continue
		}
		count := 0
		for _, v := range trueList {
			if v == 1 {
				count++
			}
		}
		if ans < count {
			ans = count
		}
	}

	fmt.Fprintln(wtr, ans)
	wtr.Flush()
}
