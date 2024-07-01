package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = NewScanner()

const (
	None = iota
	Black
	White
)

var (
	visited []int
	m       [][]Edge
)

type Edge struct {
	from int
	to   int
	dist int
}

type Stack struct {
	slice []Edge
}

func (s *Stack) Push(e Edge) {
	s.slice = append(s.slice, e)
}

func (s *Stack) Pop(e Edge) Edge {
	top := s.slice[len(s.slice)-1]
	s.slice = s.slice[:len(s.slice)-1]
	return top
}

func (s *Stack) Len() int {
	return len(s.slice)
}

func main() {
	n := sc.NextInt()
	m = make([][]Edge, n+1)
	var u, v, w int
	for i := 0; i < n-1; i++ {
		u = sc.NextInt()
		v = sc.NextInt()
		w = sc.NextInt()
		m[u] = append(m[u], Edge{from: u, to: v, dist: w % 2})
		m[v] = append(m[v], Edge{from: v, to: u, dist: w % 2})
	}

	visited = make([]int, n+1)
	DFS(1, 0)
	for i := 1; i < n+1; i++ {
		fmt.Println(visited[i] % 2)
	}
}

func DFS(v int, depth int) {
	if depth%2 == 0 {
		visited[v] = White
	} else {
		visited[v] = Black
	}
	for _, edge := range m[v] {
		if visited[edge.to] == None {
			DFS(edge.to, depth+edge.dist)
		}
	}
}

type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return &Scanner{sc}
}

func (sc *Scanner) NextInt() int {
	sc.sc.Scan()
	i, err := strconv.Atoi(sc.sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}