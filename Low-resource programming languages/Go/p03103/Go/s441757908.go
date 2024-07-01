package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

type pair struct {
	a int
	b int
}

type pairs []*pair

func (p pairs) Len() int {
	return len(p)
}

func (p pairs) Less(i, j int) bool {
	return p[i].a < p[j].a
}

func (p pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func main() {
	sc := NewScanner(os.Stdin)
	N, M := sc.NextInt(), sc.NextInt()
	var v pairs
	for i := 0; i < N; i++ {
		a, b := sc.NextInt(), sc.NextInt()
		v = append(v, &pair{a: a, b: b})
	}
	sort.Sort(v)

	sumbuy := 0
	money := 0
	for i := 0; i < N; i++ {
		nokori := M - sumbuy
		buy := min(v[i].b, nokori)
		money += v[i].a * buy
		sumbuy += buy
	}
	fmt.Println(money)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
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

func (s *Scanner) NextInt() int {
	i, err := strconv.Atoi(s.Next())
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
