package main

import (
	"bufio"
	"container/heap"
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
	x, y, a, b, c := io.NextInt(), io.NextInt(), io.NextInt(), io.NextInt(), io.NextInt()
	p, q, r := io.NextInts(a), io.NextInts(b), io.NextInts(c)
	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)
	h := &IntHeap{}
	for i := 0; i < x; i++ {
		heap.Push(h, p[a-1-i])
	}
	for i := 0; i < y; i++ {
		heap.Push(h, q[b-1-i])
	}
	for i := range r {
		heap.Push(h, r[c-1-i])
		heap.Pop(h)
	}
	ans := 0
	for h.Len() > 0 {
		ans += heap.Pop(h).(int)
	}
	io.Println(ans)
}

// IntHeap is heap for interger

type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

// Push adds an element to heap
func (h *IntHeap) Push(x interface{}) {

	*h = append(*h, x.(int))
}

// Pop returns the minimum element of the heap and remove it
func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
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

// NextInts returns n integers from stdin
func (io *Io) NextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = io.NextInt()
	}
	return ret
}

// Println is a wrapper of fmt.Fprintln
func (io *Io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}
