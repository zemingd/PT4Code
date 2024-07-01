// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
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

func (s *Scanner) nextRuneSlice() []byte {
	return []byte(s.nextStr())
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

func gcd(x, y int) int {
	if x%y != 0 {
		return gcd(y, x%y)
	}
	return y
}

const D int = 60
const MAX_N int = 200005

var to [D][MAX_N]int

func run(input io.Reader, output io.Writer) int {
	sc := NewScanner()
	N := sc.nextInt()
	K := sc.nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = sc.nextInt() - 1
	}

	for i := 0; i < N; i++ {
		to[0][i] = A[i]
	}

	for i := 1; i < D; i++ {
		for j := 0; j < N; j++ {
			to[i][j] = to[i-1][to[i-1][j]]
		}
	}

	p := 0
	for i := D; i >= 0; i-- {
		if K&(1<<i) != 0 {
			p = to[i][p]
		}
	}

	fmt.Println(p + 1)

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
