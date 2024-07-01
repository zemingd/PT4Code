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
	matrix := make([][]int, N)
	for i := 0; i < N; i++ {
		matrix[i] = make([]int, N)
		fill(matrix[i], -1)
		A := sc.NextInt()
		for j := 0; j < A; j++ {
			x, y := sc.NextInt(), sc.NextInt()
			matrix[i][x-1] = y
		}
	}

	mx := 0
	for bit := 0; bit < 1<<N; bit++ {
		ans := func() int {
			cnt := 0
			for k := 0; k < N; k++ {
				if bit&(1<<k) > 0 {
					cnt++
					//fmt.Println(bit, k)
					for l := 0; l < N; l++ {

						if matrix[k][l] == -1 || bit&(1<<l) > 0 == (matrix[k][l] == 1) {

						} else {
							//fmt.Println("Yes", bit, k, l, bit&(1<<l), matrix[k][l])
							return 0
						}
					}
				}
			}
			return cnt
		}()
		if mx < ans {
			mx = ans
		}
	}
	fmt.Println(mx)

}

func fill(arr []int, v int) {
	for i := 0; i < len(arr); i++ {
		arr[i] = v
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
