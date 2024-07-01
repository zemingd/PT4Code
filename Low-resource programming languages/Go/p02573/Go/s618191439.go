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

type cluster struct {
	arr map[int]bool
}

func (c *cluster) add(cls *cluster) {
	for k, _ := range cls.arr {
		c.arr[k] = true
	}
}

func main() {
	scanner := newScanner(bySpace)
	n := scanner.nextInt()
	m := scanner.nextInt()
	arr := make([]*cluster, n)
	for i := 0; i < n; i++ {
		arr[i] = &cluster{
			arr: map[int]bool{
				i: true,
			},
		}
	}
	for i := 0; i < m; i++ {
		a := scanner.nextInt() - 1
		b := scanner.nextInt() - 1
		var parent, child *cluster
		if a > b {
			parent = arr[b]
			child = arr[a]
			arr[a] = parent
		} else {
			parent = arr[a]
			child = arr[b]
			arr[b] = parent
		}
		parent.add(child)
	}
	max := 0
	done := map[*cluster]bool{}
	for _, v := range arr {
		if done[v] {
			continue
		}
		l := len(v.arr)
		if l > max {
			max = l
		}
		done[v] = true
	}
	fmt.Println(max)
}
