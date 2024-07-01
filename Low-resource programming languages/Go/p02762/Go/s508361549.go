package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := NewIo()
	defer io.Flush()

	n, m, k := io.Int(), io.Int(), io.Int()

	u := NewUnionFind(n)

	edges := map[int][]int{}
	for i := 0; i < m; i++ {
		a, b := io.Int()-1, io.Int()-1
		edges[a] = append(edges[a], b)
		edges[b] = append(edges[b], a)
		u.Unite(a, b)
	}

	blockEdges := map[int][]int{}
	for i := 0; i < k; i++ {
		c, d := io.Int()-1, io.Int()-1
		blockEdges[c] = append(blockEdges[c], d)
		blockEdges[d] = append(blockEdges[d], c)
	}

	anss := make([]int, n)
	for i := 0; i < n; i++ {
		anss[i] = u.Size(i) - len(edges[i]) - 1
		for _, v := range blockEdges[i] {
			if u.Same(i, v) {
				anss[i]--
			}
		}

	}

	io.PrintIntLn(anss)

}

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

func (io *Io) NextLine() string {
	var buffer []byte
	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func (io *Io) Next() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *Io) Int() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}
func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

type UnionFind struct {
	parents []int
}

func NewUnionFind(n int) *UnionFind {
	parent := make([]int, n)
	for i := 0; i < n; i++ {
		parent[i] = i
	}
	return &UnionFind{
		parents: parent,
	}
}

func (u *UnionFind) Root(x int) int {
	if u.parents[x] == x {
		return x
	}
	u.parents[x] = u.Root(u.parents[x])
	return u.parents[x]
}

func (u *UnionFind) Unite(x, y int) {
	rx := u.Root(x)
	ry := u.Root(y)
	if rx == ry {
		return
	}
	if rx < ry {
		u.parents[rx] = ry
	} else {
		u.parents[ry] = rx
	}
}

func (u *UnionFind) Same(x, y int) bool {
	rx := u.Root(x)
	ry := u.Root(y)
	if rx == ry {
		return true
	}
	return false
}

func (u *UnionFind) Size(x int) int {
	root := u.Root(x)
	size := 0
	for _, p := range u.parents {
		if p == root {
			size++
		}
	}
	return size
}
