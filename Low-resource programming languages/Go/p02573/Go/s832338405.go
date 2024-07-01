package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

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

type node struct {
	parent *node
	idx int
	l map[int]bool 
}

func add(parent, child *node) *node {
	if parent.parent == nil {
		parent.l[child.idx] = true
		return parent
	}
	parent.parent = add(parent.parent, child)
	return parent.parent
}

func main() {
	scanner := newScanner(bySpace)
	n := scanner.nextInt()
	m := scanner.nextInt()
	arr := make([]*node, n)
	for i := 0; i < n; i++ {
		arr[i] = &node{
			idx: i,
			l: map[int]bool{},
		}
	}
	for i := 0; i < m; i++ {
		a := scanner.nextInt() - 1
		b := scanner.nextInt() - 1
		if a > b {
			add(arr[b], arr[a])
		} else {
			add(arr[a], arr[b])
		}
	}
	max := 0
	for _, v := range arr {
		if v.parent != nil{
			continue
		}
		l := len(v.l) + 1
		if l > max {
			max = l
		}
	}
	fmt.Println(max)
}
