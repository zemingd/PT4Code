package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Scanner struct {
	reader *bufio.Scanner
}

func (s *Scanner) Next() string {
	s.reader.Scan()
	return s.reader.Text()
}

func (s *Scanner) NextInt() int {
	s.reader.Scan()
	val, err := strconv.Atoi(s.reader.Text())
	if err != nil {
		panic(err)
	}
	return val
}

var sc *Scanner

func init() {
	sc = &Scanner{bufio.NewScanner(os.Stdin)}
	sc.reader.Split(bufio.ScanWords)
}

func main() {
	s := sc.NextInt()
	h := s / 60 / 60
	m := (s / 60) % 60
	s = s % 60

	fmt.Printf("%v:%v:%v\n", h, m, s)
}

