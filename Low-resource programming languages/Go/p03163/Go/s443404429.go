package main

import (
	"bufio"
	"fmt"
	"os"
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
	N, W := sc.nextInt(), sc.nextInt()
	weight := make([]int, N)
	value := make([]int, N)
	for i := 0; i < N; i++ {
		weight[i] = sc.nextInt()
		value[i] = sc.nextInt()
	}
	// dp := make([][]int, N+1)
	// for i, _ := range dp {
	// 	dp[i] = make([]int, W+1)
	// }
	var dp [101][100001]int
	for i := 0; i < N; i++ {
		for w := 0; w <= W; w++ {
			if w >= weight[i] {
				dp[i+1][w] = max(dp[i][w-weight[i]]+value[i], dp[i][w])
			} else {
				dp[i+1][w] = dp[i][w]
			}
		}
	}
	fmt.Println(dp[N][W])
}
