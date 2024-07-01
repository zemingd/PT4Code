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

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

type rule struct {
	s int
	c int
}

func solve(s *Scanner) {
	wtr := bufio.NewWriter(os.Stdout)

	N, M := s.nextInt(), s.nextInt()

	ss := make([]int, M)
	cs := make([]int, M)

	for k := 0; k < M; k++ {
		ss[k], cs[k] = s.nextInt(), s.nextInt()
	}

	ansArray := make([]int, N)

	for i := 1; i <= N; i++ {
		ansArray[i-1] = 0
		tmps := 10
		tmpc := 10
		for j := 0; j < M; j++ {
			if ss[j] == i {
				ansArray[i-1] = cs[j]
				if tmps == ss[j] && tmpc != cs[j] {
					fmt.Fprintln(wtr, "-1")
					wtr.Flush()
					return
				}
				tmps = ss[j]
				tmpc = cs[j]
			}
		}
	}

	if M == 0 {
		if N == 1 {
			fmt.Fprintln(wtr, "0")
			wtr.Flush()
			return
		}

		ansArray[0] = 1
	}

	if ansArray[0] == 0 {
		fmt.Fprintln(wtr, "-1")
		wtr.Flush()
		return
	}

	ans := ""
	for i := 0; i < len(ansArray); i++ {
		ans += strconv.Itoa(ansArray[i])
	}

	fmt.Fprintln(wtr, ans)
	wtr.Flush()
}
