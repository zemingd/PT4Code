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

func main() {
	solve(NewScanner())
}

type constraint struct {
	s int
	c int
}

func solve(s *Scanner) {
	wtr := bufio.NewWriter(os.Stdout)
	N, M := s.nextInt(), s.nextInt()

	cs := make([]constraint, M)

	for i := 0; i < M; i++ {
		cs[i].s = s.nextInt()
		cs[i].c = s.nextInt()
	}

	dupCheck := make(map[int]int, M)

	for _, c := range cs {
		val, ok := dupCheck[c.s]
		if ok {
			if val != c.c {
				fmt.Fprintln(wtr, "-1")
				wtr.Flush()
				return
			}
		}
		dupCheck[c.s] = c.c
	}

	ans := make([]int, N)
	for i := 0; i < N; i++ {
		ans[i] = -1
	}
	for i := 0; i < N; i++ {
		for _, c := range cs {
			if c.s == i+1 {
				ans[i] = c.c
			}
		}
	}

	if ans[0] == -1 {
		if N == 1 {
			ans[0] = 0
		} else {
			ans[0] = 1
		}
	}

	for i := 0; i < N; i++ {
		if ans[i] == -1 {
			ans[i] = 0
		}
	}

	ansstr := ""
	for i := 0; i < N; i++ {
		ansstr += strconv.Itoa(ans[i])
	}

	fmt.Fprintln(wtr, ansstr)
	wtr.Flush()
}
