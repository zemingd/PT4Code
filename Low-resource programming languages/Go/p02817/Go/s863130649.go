package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s, t := sc.nextStr(), sc.nextStr()
	fmt.Printf("%s%s\n", t, s)
}

type scanner struct {
	sc *bufio.Scanner
}

var sc *scanner

func init() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	sc = &scanner{sc: s}
}

func (s *scanner) nextInts(ints ...*int) {
	for i := range ints {
		s.sc.Scan()
		*ints[i], _ = strconv.Atoi(s.sc.Text())
	}
}

func (s *scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
