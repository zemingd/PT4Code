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

func pow(n int) int {
	return n * n * n * n * n
}

func run(input io.Reader, output io.Writer) int {
	sc := NewScanner()
	N := sc.nextInt()
	A := make([]int, N+1)
	for i := 1; i <= N; i++ {
		A[i] = sc.nextInt()
	}

	sum := 0
	for i := 1; i <= N; i++ {
		for j := i + 1; j <= N; j++ {
			a, b := A[i], A[j]
			if a+b == j-i {
				sum++
			}
		}
	}

	fmt.Println(sum)

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
