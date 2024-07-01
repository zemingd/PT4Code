package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type TupleInt struct {
	val int
	num int
}

func main() {
	sc := NewScanner()
	N, M := sc.NextInt(), sc.NextInt()
	ls := make(SortInterFace, N)

	for i := 0; i < N; i++ {
		ls[i] = TupleInt{sc.NextInt(), sc.NextInt()}
	}

	sort.Sort(ls)

	sum := 0
	ans := 0
	for i := 0; i < N; i++ {
		k := max(0, min(M-sum, ls[i].num))
		sum += k
		ans += k * ls[i].val
	}

	fmt.Println(ans)
}

func (s *Scanner) NextInt() int {
	v, _ := strconv.Atoi(s.Next())
	return v
}

func max(a int, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func min(a int, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

type SortInterFace []TupleInt

func (s SortInterFace) Len() int {
	return len(s)
}

// <: up, >: down
func (s SortInterFace) Less(i, j int) bool {
	return s[i].val < s[j].val
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
