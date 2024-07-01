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
	s, k := in.String(), in.Int()
	for i, x := range s {
		if i > k {
			break
		}
		if x != '1' {
			Rf("%c\n", x)
		}
	}
	Pln("1")
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
func (s *Scanner) String() string {
	s.Scan()
	return s.Text()
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
func Rf(f string, s ...interface{}) {
	fmt.Printf(f, s...)
	os.Exit(0)
}
