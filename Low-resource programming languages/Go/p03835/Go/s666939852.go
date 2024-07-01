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

func solve(s *Scanner) {
	wtr := bufio.NewWriter(os.Stdout)
	K, S := s.nextInt(), s.nextInt()

	zs := map[int]bool{}

	for i := 0; i <= K; i++ {
		zs[i] = true
	}

	ansCount := 0

	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			_, ok := zs[S-x+y]
			if ok {
				ansCount++
			}
		}
	}
	fmt.Fprintln(wtr, ansCount)
	wtr.Flush()
}
