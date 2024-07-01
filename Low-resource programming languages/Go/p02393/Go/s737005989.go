package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	a := sc.NextInt()
	b := sc.NextInt()
	c := sc.NextInt()

	vals := []int{a, b, c}
	sort.Ints(vals)
	fmt.Printf("%d %d %d\n", vals[0], vals[1], vals[2])
}

