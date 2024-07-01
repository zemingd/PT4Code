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
	d := len(strconv.Itoa(N))
	if d < 3 {
		fmt.Println(0)
		return
	}
	arr := []int{}
	var dfs func(nums []int, n, digit int)
	dfs = func(nums []int, n, digit int) {
		if n == digit {
			set := make(map[int]bool)
			for _, v := range nums {
				set[v] = true
			}
			if len(set) == 3 {
				arr = append(arr, toNum(nums))
			}
			return
		}
		nums = append(nums, 3)
		dfs(nums, n+1, digit)
		nums = nums[:len(nums)-1]

		nums = append(nums, 5)
		dfs(nums, n+1, digit)
		nums = nums[:len(nums)-1]

		nums = append(nums, 7)
		dfs(nums, n+1, digit)
		nums = nums[:len(nums)-1]
	}
	for i := 3; i <= d; i++ {
		dfs([]int{}, 0, i)
	}
	ans := 0
	for _, v := range arr {
		if v <= N {
			ans++
		}
	}
	fmt.Println(ans)
}

func toNum(nums []int) int {
	res := 0
	for _, n := range nums {
		res *= 10
		res += n
	}
	return res
}
