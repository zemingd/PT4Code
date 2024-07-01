package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	key, num int
}
type ByNum []Val

func (a ByNum) Len() int           { return len(a) }
func (a ByNum) Less(i, j int) bool { return a[i].num < a[j].num }
func (a ByNum) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	N := sc.nextInt()
	A := make(map[int]int)
	B := make(map[int]int)
	for i := 0; i < N; i++ {
		if i%2 == 0 {
			A[sc.nextInt()]++
		} else {
			B[sc.nextInt()]++
		}
	}
	valA := []Val{}
	for key, count := range A {
		valA = append(valA, Val{key, count})
	}
	sort.Sort(ByNum(valA))
	valB := []Val{}
	for key, count := range B {
		valB = append(valB, Val{key, count})
	}
	sort.Sort(ByNum(valB))
	aMin := valA[len(valA)-1]
	bMin := valB[len(valB)-1]
	if aMin.key != bMin.key {
		fmt.Fprintln(wtr, N-valA[len(valA)-1].num-valB[len(valB)-1].num)
	} else {
		var aMin2, bMin2 int
		if len(valA) != 1 {
			aMin2 = valA[len(valA)-2].num
		} else {
			aMin2 = 0
		}
		if len(valB) != 1 {
			bMin2 = valB[len(valB)-2].num
		} else {
			bMin2 = 0
		}
		mi := min(N-aMin.num-bMin2, N-bMin.num-aMin2)
		fmt.Fprintln(wtr, mi)
	}

	wtr.Flush()
}
