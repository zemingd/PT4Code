package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	n, m := io.NextInt(), io.NextInt()
	a, b := make([]int, m), make([]int, m)
	for i := 0; i < m; i++ {
		ai, bi := io.NextInt()-1, io.NextInt()-1
		if ai > bi {
			ai, bi = bi, ai
		}
		a[i], b[i] = ai, bi
	}
	indices := make([]int, m)
	for i := 0; i < m; i++ {
		indices[i] = i
	}
	sort.Slice(indices, func(i, j int) bool {
		if a[i] == a[j] {
			return b[i] < b[j]
		}
		return a[i] < a[j]
	})

	unionFind := make([]int, n)
	for i := range unionFind {
		unionFind[i] = i
	}
	for _, idx := range indices {
		unionFind[b[idx]] = unionFind[a[idx]]
	}

	cnt := map[int]int{}
	for _, v := range unionFind {
		cnt[v]++
	}

	max := 1
	for _, v := range cnt {
		if v > max {
			max = v
		}
	}
	if max == 1 {
		panic("error")
	}
	io.Println(max)

	Log("a=", a)
	Log("b=", b)
	Log("indices=", indices)
	Log("unionFind=", unionFind)
	Log("cnt=", cnt)
}

// Io is I/O object
type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

// NewIo returns a new Io instance
func NewIo(r io.Reader, w io.Writer) *Io {
	return &Io{
		reader: bufio.NewReader(r),
		writer: bufio.NewWriter(w),
	}
}

// Flush flushes writer
func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

// NextLine scans a line from stdin
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

// Next return a word from stdin
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

// NextInt returns an integer from stdin
func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

// Println is a wrapper of fmt.Fprintln
func (io *Io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

// Log outputs a to stderr
func Log(a ...interface{}) {
	fmt.Fprintln(os.Stderr, a...)
}
