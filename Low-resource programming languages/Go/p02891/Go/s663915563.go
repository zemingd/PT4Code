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
	S := sc.nextRuneSlice()
	K := sc.nextInt()
	if len(S) == 1 {
		fmt.Fprintln(wtr, K/2)
		wtr.Flush()
		return
	}
	//ans := 0
	//before := S[0]
	//for i := 1; i < len(S); i++ {
	//	if before == S[i] {
	//		ans++
	//		S[i] = 'X'
	//	}
	//	before = S[i]
	//}
	//fmt.Println(string(S))
	//ans *= K
	//if S[0] == S[len(S)-1] {
	//	ans += K - 1
	//}
	ans := 0
	before := S[0]
	tmpS := make([]rune, len(S))
	copy(tmpS, S)
	S = append(S, S...)
	for i := 1; i < len(S); i++ {
		if before == S[i] {
			ans++
			S[i] = 'X'
		}
		before = S[i]
	}
	if S[0] == S[len(S)-1] {
		S[0] = 'Y'
		ans++
		ans *= K / 2
		ans--
	} else {
		ans *= K / 2
	}
	if K%2 != 0 {
		before := S[len(S)-1]
		for i := 0; i < len(tmpS); i++ {
			if before == tmpS[i] {
				ans++
				tmpS[i] = 'X'
			}
			before = tmpS[i]
		}
	}
	//fmt.Println(string(S))
	//fmt.Println(string(tmpS))

	fmt.Fprintln(wtr, ans)
	wtr.Flush()
}
