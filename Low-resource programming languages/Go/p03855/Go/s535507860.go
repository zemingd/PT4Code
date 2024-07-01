package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

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

func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) NextLong() int64 {
	i, err := strconv.ParseInt(io.Next(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) NextDouble() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) PrintLn(a ...interface{}) {
	for i, v := range a {
		if i > 0 {
			io.writer.WriteString(" ")
		}
		fmt.Fprintf(io.writer, "%v", v)
	}
	io.writer.WriteString("\n")
}

func (io *Io) PrintfLn(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format + "\n", a...)
}

func (io *Io) PrintIntLn(a ...int) {
	for i, v := range a {
		if i > 0 {
			io.writer.WriteString(" ")
		}
		fmt.Fprint(io.writer, v)
	}
	io.writer.WriteString("\n")
}

type UnionFind struct {
	data []int
}

func NewUnionFind(n int) *UnionFind {
	data := make([]int, n)
	for i := 0; i < n; i++ {
		data[i] = -1
	}
	return &UnionFind{
		data,
	}
}

func (u *UnionFind) root(x int) int {
	if u.data[x] < 0 {
		return x
	} else {
		r := u.root(u.data[x])
		u.data[x] = r
		return r
	}
}

func (u *UnionFind) same(x, y int) bool {
	return u.root(x) == u.root(y)
}

func (u *UnionFind) size(x int) int {
	return -u.data[u.root(x)]
}

func (u *UnionFind) merge(x, y int) {
	x = u.root(x)
	y = u.root(y)
	if x != y {
		if u.size(x) < u.size(y) {
			x, y = y, x
		}
		u.data[x] += u.data[y]
		u.data[y] = x
	}
}

type Tuple2 struct {
	first, second int
}

func main() {
	io := NewIo()
	defer io.Flush()
	N, K, L := io.NextInt(), io.NextInt(), io.NextInt()
	ar := NewUnionFind(N)
	for i := 0; i < K; i++ {
		p, q := io.NextInt(), io.NextInt()
		p--
		q--
		ar.merge(p, q)
	}
	br := NewUnionFind(N)
	for i := 0; i < L; i++ {
		p, q := io.NextInt(), io.NextInt()
		p--
		q--
		br.merge(p, q)
	}
	c := make(map[Tuple2]int)
	for i := 0; i < N; i++ {
		c[Tuple2{ar.root(i), br.root(i)}]++
	}
	ans := make([]int, N)
	for i := 0; i < N; i++ {
		ans[i] = c[Tuple2{ar.root(i), br.root(i)}]
	}
	io.PrintIntLn(ans...)
}
