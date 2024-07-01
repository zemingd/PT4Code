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

var clusters = []*cluster{}

type cluster struct {
	nodes []*node
}

type node struct {
	cls *cluster
}

func create(n1, n2 *node) {
	c := &cluster{
		nodes: []*node{
			n1, n2,
		},
	}
	n1.cls = c
	n2.cls = c
	clusters = append(clusters, c)
}

func add(c *cluster, n *node) {
	n.cls = c
	c.nodes = append(c.nodes, n)
}

func merge(c1, c2 *cluster) {
	var parent, child *cluster
	if len(c1.nodes) > len(c2.nodes) {
		parent = c1
		child = c2
	} else {
		parent = c2
		child = c1
	}
	for _, n := range child.nodes {
		n.cls = parent
	}
	parent.nodes = append(parent.nodes, child.nodes...)
	child.nodes = []*node{}
}

func main() {
	scanner := newScanner(bySpace)
	n := scanner.nextInt()
	m := scanner.nextInt()
	arr := make([]*node, n)
	for i := 0; i < n; i++ {
		arr[i] = new(node)
	}
	for i := 0; i < m; i++ {
		a := scanner.nextInt() - 1
		b := scanner.nextInt() - 1
		if arr[a].cls == nil && arr[b].cls == nil {
			create(arr[a], arr[b])
			continue
		}
		if arr[a].cls == nil && arr[b].cls != nil {
			add(arr[b].cls, arr[a])
			continue
		}
		if arr[b].cls == nil && arr[a].cls != nil {
			add(arr[a].cls, arr[b])
			continue
		}
		if arr[a].cls == arr[b].cls {
			continue
		}
		merge(arr[a].cls, arr[b].cls)
	}

	max := 0
	for _, v := range clusters{
		if len(v.nodes) > max {
			max = len(v.nodes)
		}
	}
	fmt.Println(max)
}
