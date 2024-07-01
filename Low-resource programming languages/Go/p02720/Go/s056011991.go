package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

const mod = 2 << 60
const facNum = 300001
const INF = 2 << 60

func main() {
	sc := newScanner(os.Stdin)
	K := sc.i()
	q := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	for i := 0; i < K; i++ {
		x := q[i]
		if x%10 != 0 {
			q = append(q, 10*x+(x%10)-1)
		}
		q = append(q, 10*x+(x%10))
		if x%10 != 9 {
			q = append(q, 10*x+(x%10)+1)
		}
	}
	fmt.Println(q[K-1])
}

func Pow(a, n int) int {
	ans := 1
	for n > 0 {
		if (n & 1) == 1 {
			ans = ans * a % mod
		}
		a = a * a % mod
		n = n >> 1
	}
	return ans
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
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

func abs(i int) int {
	if i < 0 {
		return -i
	}
	return i
}
