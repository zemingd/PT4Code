package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func add(cnt map[int]int, v int) {
	if _, ok := cnt[v]; !ok {
		cnt[v] = 1
		return
	}
	cnt[v]++
}

func main() {
	sc := NewScanner(os.Stdin)
	N := sc.NextInt()
	A := make([]int, N, N)
	for i := 0; i < N; i++ {
		A[i] = sc.NextInt()
	}
	cnt := make(map[int]int)
	for i := 0; i < N; i++ {
		for j := 1; j*j <= A[i]; j++ {
			if A[i]%j == 0 {
				add(cnt, j)
				if A[i] != j*j {
					add(cnt, A[i]/j)
				}
			}
		}
	}
	ans := 0
	for k, v := range cnt {
		if v == N || v == N-1 {
			ans = max(ans, k)
		}
	}
	fmt.Println(ans)
}

func vmin(v []int) int {
	mn := math.MaxInt32
	for i := 0; i < len(v); i++ {
		mn = min(mn, v[i])
	}
	return mn
}

func lcm(x, y int) int {
	x, y = max(x, y), min(x, y)
	if y == 0 {
		return x
	}
	return lcm(y, x%y)
}

func max64(x, y int64) int64 {
	if x > y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

// scanner
type Scanner struct {
	r   *bufio.Reader
	buf []byte
	p   int
}

func NewScanner(r io.Reader) *Scanner {
	rdr := bufio.NewReaderSize(r, 1024)
	return &Scanner{r: rdr}
}

func (s *Scanner) ReadLine() {
	s.buf = make([]byte, 0)
	for {
		line, isp, err := s.r.ReadLine()
		if err != nil {
			os.Exit(1)
		}
		s.buf = append(s.buf, line...)
		if !isp {
			break
		}
	}
}

func (s *Scanner) NextInt64() int64 {
	i, err := strconv.ParseInt(s.Next(), 10, 64)
	if err != nil {
		os.Exit(1)
	}
	return i
}

func (s *Scanner) NextInt() int {
	i, err := strconv.Atoi(s.Next())
	if err != nil {
		os.Exit(1)
	}
	return i
}

func (s *Scanner) NextFloat64() float64 {
	i, err := strconv.ParseFloat(s.Next(), 64)
	if err != nil {
		os.Exit(1)
	}
	return i
}

func (s *Scanner) Next() string {
	s.Pre()
	start := s.p
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			break
		}
	}
	next := string(s.buf[start:s.p])
	s.p++
	return next
}

func (s *Scanner) Pre() {
	if s.p >= len(s.buf) {
		s.ReadLine()
		s.p = 0
	}
}
