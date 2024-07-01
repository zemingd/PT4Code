package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()
	N := sc.NextInt()
	T, A := float64(sc.NextInt()), float64(sc.NextInt())
	H := sc.NextIntArray()

	index := 0
	mn := abs(A - T - float64(H[0])*0.006)
	for i := 0; i < N; i++ {
		v := abs(A - T - float64(H[i])*0.006)

		if mn > v {
			mn = v
			index = i
		}
	}
	fmt.Println(index + 1)

}

func abs(a float64) float64 {
	if a < 0 {
		return -a
	}
	return a
}

type Scanner struct {
	r   *bufio.Reader
	buf []byte
	p   int
}

func NewScanner() *Scanner {
	rdr := bufio.NewReaderSize(os.Stdin, 1000)
	return &Scanner{r: rdr}
}
func (s *Scanner) Next() string {
	s.pre()
	start := s.p
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			break
		}
	}
	result := string(s.buf[start:s.p])
	s.p++
	return result
}
func (s *Scanner) NextLine() string {
	s.pre()
	start := s.p
	s.p = len(s.buf)
	return string(s.buf[start:])
}
func (s *Scanner) NextInt() int {
	v, _ := strconv.Atoi(s.Next())
	return v
}
func (s *Scanner) NextInt64() int64 {
	v, _ := strconv.ParseInt(s.Next(), 10, 64)
	return v
}

func (s *Scanner) NextIntArray() []int {
	s.pre()
	start := s.p
	result := []int{}
	for ; s.p < len(s.buf)+1; s.p++ {
		if s.p == len(s.buf) || s.buf[s.p] == ' ' {
			v, _ := strconv.ParseInt(string(s.buf[start:s.p]), 10, 0)
			result = append(result, int(v))
			start = s.p + 1
		}
	}

	return result
}
func (s *Scanner) NextInt64Array() []int64 {
	s.pre()
	start := s.p
	result := []int64{}
	for ; s.p < len(s.buf)+1; s.p++ {
		if s.p == len(s.buf) || s.buf[s.p] == ' ' {
			v, _ := strconv.ParseInt(string(s.buf[start:s.p]), 10, 64)
			result = append(result, v)
			start = s.p + 1
		}
	}
	return result
}

func (s *Scanner) NextMap() map[int]bool {
	s.pre()
	start := s.p
	mp := map[int]bool{}
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			v, _ := strconv.Atoi(string(s.buf[start:s.p]))
			mp[v] = true
			start = s.p + 1
		}
	}
	v, _ := strconv.Atoi(string(s.buf[start:s.p]))
	mp[v] = true

	return mp
}

func (s *Scanner) pre() {
	if s.p >= len(s.buf) {
		s.readLine()
		s.p = 0
	}
}
func (s *Scanner) readLine() {
	s.buf = make([]byte, 0)
	for {
		l, p, e := s.r.ReadLine()
		if e != nil {
			panic(e)
		}
		s.buf = append(s.buf, l...)
		if !p {
			break
		}
	}
}
