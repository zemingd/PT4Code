package main

import (
    "fmt"
    "bufio"
    "sort"
    "os"
    "strconv"
    "math"
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

    max_attack := a[n-1]
    ans := 0
    for i := n-1; i >= 0; i-- {
        if h <= 0 {
            break
        }
        if b[i] < max_attack {
            break
        } else {
            h -= b[i]
            ans++
        }
    }
    fmt.Println( ans + int(math.Max(0, float64((h+max_attack-1)/max_attack)) ))
}

type Scanner struct {
	r *bufio.Reader
	buf []byte
	p   int
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

func NewScanner() *Scanner {
	rdr := bufio.NewReaderSize(os.Stdin, 1000)
	return &Scanner{r: rdr}
}

func (s *Scanner) NextInt() int {
	v, _ := strconv.Atoi(s.Next())
	return v
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