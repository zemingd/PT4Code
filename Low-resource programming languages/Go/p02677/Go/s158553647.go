// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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

func run(input io.Reader, output io.Writer) int {
	sc := NewScanner()
	A := sc.nextFloat()
	B := sc.nextFloat()
	H := sc.nextFloat()
	M := sc.nextFloat()

	radA := float64(H*60+M) * 0.5
	radB := float64(M * 6)
	var radAB float64
	if radA > radB {
		radAB = radA - radB
	} else {
		radAB = radB - radA
	}

	aa := float64(A*A+B*B) - float64(2*A*B)*math.Cos(radAB*math.Pi/180.0)

	fmt.Printf("%0.15f", math.Sqrt(aa))

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
