package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	//	"strings"
	"sort"
)

func main() {
	sc := NewScanner()

	n := sc.NextInt()
	h := sc.NextInt()

	a := make([]int, n, n)
	b := make([]int, n, n)

	for i := 0; i < n; i++ {
		a[i] = sc.NextInt()
		b[i] = sc.NextInt()
	}
	sort.Ints(a)
	sort.Ints(b)

	amx := a[n-1]

	ans := 0
	for i := n - 1; i >= 0; i-- {
		if b[i] < amx {
			break
		} else {
			h -= b[i]
			ans++
			if h <= 0 {
				fmt.Printf("%+v\n", ans) // output for debug
				return
			}
		}
	}

	if h%amx == 0 {
		fmt.Printf("%+v\n", ans+(h/amx)) // output for debug
	} else {
		fmt.Printf("%+v\n", ans+1+(h/amx)) // output for debug
	}
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

func (s *Scanner) NextIntArray() []int {
	s.pre()
	start := s.p
	result := []int{}
	for ; s.p < len(s.buf); s.p++ {
		if s.buf[s.p] == ' ' {
			v, _ := strconv.Atoi(string(s.buf[start:s.p]))
			result = append(result, v)
			start = s.p + 1
		}
	}
	v, _ := strconv.Atoi(string(s.buf[start:s.p]))
	result = append(result, v)

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
