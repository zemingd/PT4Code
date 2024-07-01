package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	//	"strings"
)

func main() {
	sc := NewScanner()

	mp := map[string]int{}
	n := sc.NextInt()
	random := 0
	for i := 0; i < n; i++ {
		tmp := sc.NextInt()
		if tmp < 400 {
			mp["gray"]++
		}
		if tmp >= 400 && tmp < 800 {
			mp["brown"]++
		}
		if tmp >= 800 && tmp < 1200 {
			mp["green"]++
		}
		if tmp >= 1200 && tmp < 1600 {
			mp["water"]++
		}
		if tmp >= 1600 && tmp < 2000 {
			mp["blue"]++
		}
		if tmp >= 2000 && tmp < 2400 {
			mp["yellow"]++
		}
		if tmp >= 2400 && tmp < 2800 {
			mp["orange"]++
		}
		if tmp >= 2800 && tmp < 3200 {
			mp["red"]++
		}
		if tmp >= 3200 {
			random++
		}
	}
	mx := 0
	if random > 0 {
		mx = len(mp) + random
	}
	if mx > 8 {
		mx = 8
	}

	min := 0
	if len(mp) > 0 {
		min = len(mp)
	} else {
		min = 1
	}
	fmt.Printf("%d %d\n", min, mx)
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
