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

func solve(sc *scanner, wr *bufio.Writer) int {
	N := sc.i()
	M := sc.i()
	X := sc.i()
	C := make([]int, N)
	A := make([][]int, N)
	for i := 0; i < N; i++ {
		C[i] = sc.i()
		A[i] = make([]int, M)
		for j := 0; j < M; j++ {
			A[i][j] = sc.i()
		}
	}

	ans := math.MaxInt64
	for s := 0; s < (1 << N); s++ {
		cost := 0
		levels := make([]int, M)
		for i := 0; i < N; i++ {
			if (s>>i)&1 == 1 {
				cost += C[i]
				for j := 0; j < M; j++ {
					levels[j] += A[i][j]
				}
			}
		}
		passed := true
		for _, lv := range levels {
			if lv < X {
				passed = false
				break
			}
		}

		if passed {
			if ans > cost {
				ans = cost
			}
		}
	}

	if ans == math.MaxInt64 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
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
