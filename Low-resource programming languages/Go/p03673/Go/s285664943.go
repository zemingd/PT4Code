package main

import (
	"fmt"
	"io"
	"os"
)

func assert(x bool) {
	if !x {
		panic("assertion failed")
	}
}

type Scanner struct {
	is     io.Reader
	buffer [1 << 16]byte
	size   int
	pos    int
}

func NewScanner(in io.Reader) *Scanner {
	return &Scanner{is: in}
}

func (s *Scanner) nextChar() int {
	if s.pos >= s.size {
		var err error
		s.size, err = s.is.Read(s.buffer[:])
		s.pos = 0
		if err == io.EOF {
			return -1
		}
	}
	assert(s.pos < s.size)
	c := s.buffer[s.pos]
	s.pos++
	return int(c)
}

const BitsPerInt = 32 << uint(^uint(0)>>63)

const MinInt = -1 << (BitsPerInt - 1)

const MaxInt = -(MinInt + 1)

func (s *Scanner) NextInt() int {
	c := s.nextChar()
	for c == ' ' || c == '\r' || c == '\n' || c == '\t' {
		c = s.nextChar()
	}
	if c == '-' {
		c = s.nextChar()
		assert('0' <= c && c <= '9')
		n := -(c - '0')
		c = s.nextChar()
		for '0' <= c && c <= '9' {
			d := c - '0'
			c = s.nextChar()
			assert(n > MinInt/10 || n == MinInt/10 && d <= -(MinInt%10))
			n = n*10 - d
		}
		return n
	} else {
		assert('0' <= c && c <= '9')
		n := c - '0'
		c = s.nextChar()
		for '0' <= c && c <= '9' {
			d := c - '0'
			c = s.nextChar()
			assert(n < MaxInt/10 || n == MaxInt/10 && d <= MaxInt%10)
			n = n*10 + d
		}
		return n
	}
}

func main() {
	in := NewScanner(os.Stdin)
	n := in.NextInt()

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = in.NextInt()
	}

	b := []int{}
	for i := 0; i < n; i++ {
		b = append(b, arr[i])
		rev(b)
	}

	for _, e := range b {
		fmt.Printf("%d ", e)
	}
}

func rev(b []int) {
	for i, j := 0, len(b)-1; i < j; i, j = i+1, j-1 {
		b[i], b[j] = b[j], b[i]
	}
}