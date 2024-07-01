package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()
	N, M := sc.NextInt(), sc.NextInt()
	H := sc.NextIntArray()
	edge := make([][]int, N)
	for i := 0; i < N; i++ {
		edge[i] = make([]int, 0, N)
	}
	for i := 0; i < M; i++ {
		A, B := sc.NextInt(), sc.NextInt()
		A--
		B--
		edge[A] = append(edge[A], B)
		edge[B] = append(edge[B], A)
	}
	ans := 0
	for s, v := range edge {
		flag := true
		for _, v1 := range v {
			if H[s] <= H[v1] {
				flag = false
				break
			}
		}
		if flag {
			ans++
		}
	}
	fmt.Println(ans)

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

func (s *Scanner) NextFloat() float64 {
	v, _ := strconv.ParseFloat(s.Next(), 64)
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
