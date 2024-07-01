package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	k := io.NextInt()
	q := Queue{}
	for i := 1; i <= 9; i++ {
		q.Push(i)
	}
	for i := 0; i < k-1; i++ {
		x := q.Pop()
		if x%10 != 0 {
			q.Push(10*x + x%10 - 1)
		}
		q.Push(10*x + x%10)
		if x%10 != 9 {
			q.Push(10*x + x%10 + 1)
		}
	}
	io.Println(q.Pop())
}

// Queue for Lunlun number
type Queue []int

// Push appends x to end of queue
func (q *Queue) Push(x int) { *q = append(*q, x) }

// Pop returns first item
func (q *Queue) Pop() int {
	x := (*q)[0]
	*q = (*q)[1:]
	return x
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
