package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {

	scanner := NewBufScanner(os.Stdin)
	n := scanner.Int()


	as := make([]float64, 200000)
	for i := 0; i < n; i++ {
		//fmt.Scan(&as[i])
		as[i] = scanner.Float64()
	}

	var maxv, minv float64
	maxv = -2000000000
	minv = as[0]

	for i := 1; i < n; i++ {
		maxv = math.Max(maxv, as[i]-minv)
		minv = math.Min(minv, as[i])
	}
	fmt.Println(int(maxv))
}


func (s *BufScanner) UInt() uint64 {
	s.Scan()
	i, e := strconv.ParseUint(s.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func (s *BufScanner) Int() int {
	return int(s.UInt())
}

func (s *BufScanner) Float64() float64 {
	s.Scan()
	i, e := strconv.ParseFloat(s.Text(),64)
	if e != nil {
		panic(e)
	}
	return i
}

type BufScanner struct {
	*bufio.Scanner
}

func NewBufScanner(r io.Reader) *BufScanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	// s.Split(scanWords)
	return &BufScanner{s}
}

func scanWords(data []byte, atEOF bool) (advance int, token []byte, err error) {
	start := 0
	for isSpace(data[start]) {
		start++
	}
	for i := start; i < len(data); i++ {
		if isSpace(data[i]) {
			return i+1, data[start:i], nil
		}
	}
	if atEOF && len(data) > start {
		return len(data), data[start:], nil
	}
	return start, nil, nil
}
func isSpace(b byte) bool {
	return b == ' ' || b == '\n' || b == '\r' || b == '\t'
}

