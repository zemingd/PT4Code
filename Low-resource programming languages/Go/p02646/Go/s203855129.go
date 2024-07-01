// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
	"math/big"
	"os"
	"strconv"
)

func solve(sc *scanner, wr *bufio.Writer) int {
	A := big.NewInt(int64(sc.i()))
	V := big.NewInt(int64(sc.i()))
	B := big.NewInt(int64(sc.i()))
	W := big.NewInt(int64(sc.i()))
	T := big.NewInt(int64(sc.i()))

	a := V.Mul(V, T)
	b := W.Mul(W, T)
	if a.Add(a, A).Cmp(b.Add(b, B)) >= 1 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

	return 0
}

func main() {
	sc := newScanner(os.Stdin)
	wr := bufio.NewWriter(os.Stdout)
	ret := solve(sc, wr)
	wr.Flush()
	os.Exit(ret)
}

// I/O
type scanner struct {
	sc *bufio.Scanner
}

func newScanner(input io.Reader) *scanner {
	sc := bufio.NewScanner(input)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &scanner{sc}
}

func (s *scanner) s() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *scanner) i() int {
	i, e := strconv.Atoi(s.s())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *scanner) f() float64 {
	f, e := strconv.ParseFloat(s.s(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *scanner) bs() []byte {
	return []byte(s.s())
}

func (s *scanner) is(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.i()
	}
	return res
}

func (s *scanner) fs(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.f()
	}
	return res
}
