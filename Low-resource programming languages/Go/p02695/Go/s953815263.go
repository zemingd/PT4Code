package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

var n, m, q int
var a, b, c, d []int

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	n, m, q = io.NextInt(), io.NextInt(), io.NextInt()
	a, b, c, d = make([]int, q), make([]int, q), make([]int, q), make([]int, q)
	for i := 0; i < q; i++ {
		a[i], b[i], c[i], d[i] = io.NextInt(), io.NextInt(), io.NextInt(), io.NextInt()
	}
	ans := solve()
	io.Println(ans)
}

func solve() (ans int) {
	return search([]int{1})
}

func search(choice []int) (max int) {
	if len(choice) == n+1 {
		return scoring(choice)
	}
	for i := choice[len(choice)-1]; i <= m; i++ {
		score := search(append(choice, i))
		if score > max {
			max = score
		}
	}
	return max
}

func scoring(choice []int) int {
	score := 0
	for i := range a {
		if choice[b[i]]-choice[a[i]] == c[i] {
			score += d[i]
		}
	}
	return score
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
