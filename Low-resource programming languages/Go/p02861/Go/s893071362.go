package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	//	"strings"
	"math"
)

func main() {
	sc := NewScanner()

	n := sc.NextInt()
	denom := 1
	for i := n; i >= 1; i-- {
		denom *= i
	}

	arrx := make([]int, n)
	arry := make([]int, n)

	for i := 0; i < n; i++ {
		arrx[i] = sc.NextInt()
		arry[i] = sc.NextInt()
	}

	sum := 0.0
	//	magic := float64((n - 1) * 2)
	magic := 1.0
	for i := n - 1; i >= 1; i-- {
		magic *= float64(i)
	}
	magic *= 2
	//	fmt.Printf("%+v\n", magic) // output for debug

	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			tmp := math.Sqrt(
				float64((arrx[i]-arrx[j])*(arrx[i]-arrx[j])) +
					float64((arry[i]-arry[j])*(arry[i]-arry[j])))
			//			fmt.Printf("%+v\n", tmp) // output for debug

			sum += tmp * magic
		}
	}
	fmt.Printf("%v\n", sum/float64(denom))

}

/*
	tmp := math.Sqrt(
		float64((arrx[i]-arrx[j])*(arrx[i]-arrx[j])) +
			math.Sqrt(float64((arry[i]-arry[j])*(arry[i]-arry[j]))))
*/

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
