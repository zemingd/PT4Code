package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Tuple struct {
	A int
	B int
}

func main() {
	sc := NewScanner()
	N, M := sc.NextInt(), sc.NextInt()
	A := sc.NextIntArray()

	mp := map[int]int{}

	for i := 0; i < N; i++ {
		mp[A[i]]++
	}

	K := make(SortInterFace, M)
	for i := 0; i < M; i++ {
		B, C := sc.NextInt(), sc.NextInt()
		K[i] = Tuple{B, C}
	}

	for k, v := range mp {
		K = append(K, Tuple{v, k})
	}

	sort.Sort(K)

	c := 0
	total := 0
	for _, v := range K {
		c += v.A
		total += v.A * v.B
		//fmt.Println(c, i, v, total)
		if c >= N {
			total -= (c - N) * v.B
			break
		}
	}
	fmt.Println(total)
}

type SortInterFace []Tuple

func (s SortInterFace) Len() int {
	return len(s)
}
func (s SortInterFace) Less(i, j int) bool {
	return s[i].B > s[j].B
}
func (s SortInterFace) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
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
