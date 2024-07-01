// by syu
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var in = NewScanner(os.Stdin, 0)

func main() {
	n := in.Int()
	c := 0
	for i := 0; i <= n; i++ {
		if i&1 == 0 {
			continue
		}
		d := divisors(i)
		if len(d) == 8 {
			c++
		}
	}
	Pln(c)
}
func divisors(n int) (r []int) {
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			r = append(r, i)
		}
	}
	return
}

type Scanner struct {
	*bufio.Scanner
}

func NewScanner(r io.Reader, max int) *Scanner {
	s := bufio.NewScanner(r)
	s.Split(scanWords)
	if max <= 0 {
		max = 1048576
	}
	s.Buffer([]byte{}, max)
	return &Scanner{s}
}
func (s *Scanner) Int() int {
	s.Scan()
	i, e := strconv.ParseInt(s.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}
func isSpace(b byte) bool {
	return b == ' ' || b == '\n' || b == '\r' || b == '\t'
}
func scanWords(data []byte, atEOF bool) (advance int, token []byte, err error) {
	start := 0
	for start < len(data) && isSpace(data[start]) {
		start++
	}
	for i := start; i < len(data); i++ {
		if isSpace(data[i]) {
			return i + 1, data[start:i], nil
		}
	}
	if atEOF && len(data) > start {
		return len(data), data[start:], nil
	}
	return start, nil, nil
}
func Pln(s ...interface{}) {
	fmt.Println(s...)
}
