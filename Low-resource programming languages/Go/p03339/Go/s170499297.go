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

	_ = sc.NextLine()
	s := sc.NextLine()
	cnt := make([]int, len(s))
	num := 0

	// for W
	for i := 0; i < len(s); i++ {
		if i == 0 {
			cnt[0] = num
			if string(s[i]) == "W" {
				num++
			}
			continue
		}
		cnt[i] = num
		if string(s[i]) == "W" {
			num++
		}
	}
	//	fmt.Printf("%+v\n", cnt) // output for debug
	num = 0
	for i := len(s) - 1; i >= 0; i-- {
		if i == len(s)-1 {
			cnt[len(s)-1] += num
			if string(s[i]) == "E" {
				num++
			}
			continue
		}
		cnt[i] += num
		if string(s[i]) == "E" {
			num++
		}
	}
	//	fmt.Printf("%+v\n", cnt) // output for debug

	min := 3000000
	for i := 0; i < len(cnt); i++ {
		if min > cnt[i] {
			min = cnt[i]
		}
	}
	fmt.Printf("%+v\n", min) // output for debug
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
