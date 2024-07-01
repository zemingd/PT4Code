package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := newScanner(bySpace)
	d := scanner.nextInt()
	t := scanner.nextInt()
	s := scanner.nextInt()
	if d <= t*s {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

type splitter int

const (
	bySpace splitter = iota
	byLine
)

func newScanner(sp splitter) *sc {
	scanner := bufio.NewScanner(os.Stdin)
	if sp == bySpace {
		scanner.Split(bufio.ScanWords)
	}
	return &sc{
		s: scanner,
	}
}

type sc struct {
	s *bufio.Scanner
}

func (s *sc) nextInt() int {
	if s.s.Scan() {
		val := s.s.Text()
		v, err := strconv.Atoi(val)
		if err != nil {
			panic(err)
		}
		return v
	}
	panic("no more stdin")
}
