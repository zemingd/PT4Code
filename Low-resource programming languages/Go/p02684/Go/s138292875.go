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
	N, K := sc.i(), sc.i()
	moves := make([]int, N)
	for i := 0; i < N; i++ {
		moves[i] = sc.i()
	}
	graph := make([]int, N)
	//graph[0] = 0
	arrived := make([]int, N)
	for i := 0; i < N; i++ {
		arrived[i] = -1
	}
	loopStart := 0
	loopEnd := N + 1
	for i := 0; i < N; i++ {
		arrived[graph[i]] = i
		next := moves[graph[i]] - 1
		ok := arrived[next]
		if ok != -1 {
			loopStart = ok
			loopEnd = i + 1
			break
		}
		graph[i+1] = next
	}
	loop := loopEnd - loopStart
	goalIndex := K
	if loopStart < K {
		goalIndex = (K-loopStart)%loop + loopStart
	} 
	
	goal := graph[goalIndex] + 1
	fmt.Println(goal)

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
