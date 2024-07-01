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
	sc := NewScanner(os.Stdin)
	N := sc.NextInt()
	sum := make([]int, N)
	for i := 0; i < N; i++ {
		w := sc.NextInt()
		sum[i] = w
		if i > 0 {
			sum[i] += sum[i-1]
		}
	}
	ans := 100000000
	for i := 1; i < N-1; i++ {
		ans = min(ans, abs(sum[N-1]-sum[i]-sum[i]))
	}
	fmt.Println(ans)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func vmin(v []int) int {
	mn := math.MaxInt32
	for i := 0; i < len(v); i++ {
		mn = min(mn, v[i])
	}
	return mn
}

func gcd(x, y int) int {
	if y > 0 {
		return gcd(y, x%y)
	}
	return x
}

func lcm(x, y int) int {
	return x / gcd(x, y) * y
}

func max64(x, y float64) float64 {
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

func min64(x, y float64) float64 {
	if x < y {
		return x
	}
	return y
}

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