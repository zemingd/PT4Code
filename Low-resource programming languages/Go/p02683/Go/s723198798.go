package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := newScanner(os.Stdin)
	N, M, X := sc.i(), sc.i(), sc.i()
	books := make([][]int, 0, N)
	for i := 0; i < N; i++ {
		book := sc.is(M + 1)
		books = append(books, book)
	}
	ans := 12345678
	all := 1 << N
	for mask := 0; mask < all; mask++ {
		level := make([]int, M)
		cost := 0
		for i := 0; i < N; i++ {
			if mask>>i&1 == 1 {
				cost = cost + books[i][0]
				for j := 0; j < M; j++ {
					level[j] = level[j] + books[i][j+1]
				}
			}
		}
		ok := true
		for i := 0; i < M; i++ {
			if level[i] < X {
				ok = false
			}
		}
		if ok {
			ans = min(ans, cost)
		}
	}
	if ans == 12345678 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}

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

func Pow(x, y int) int {
	fx := float64(x)
	fy := float64(y)
	z := math.Pow(fx, fy)
	return int(z)
}

func Gcd(a, b int) int {
	if a < b {
		return Gcd(b, a)
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
