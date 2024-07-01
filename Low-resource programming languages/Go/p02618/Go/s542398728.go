package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	d := io.NextInt()
	c := io.NextInts(n)
	s := make([][]int, d)
	for i := 0; i < d; i++ {
		s[i] = io.NextInts(n)
	}
	ans := solve(c, s)
	for i := range ans {
		io.Println(ans[i])
	}
}

const (
	n    = 26
	d    = 365
	ninf = -math.MaxInt64
)

func solve(c []int, s [][]int) []int {
	return greedy(c, s)
}

func greedy(c []int, s [][]int) []int {
	t := make([]int, d)
	lasts := make([]int, n)
	for i := 0; i < n; i++ {
		if i >= len(s) {
			break
		}
		_, ti := greedyStep(c, s, lasts, i+1)
		t[i] = ti
	}
	return t[:len(s)]
}

func greedyStep(c []int, s [][]int, lasts []int, day int) (int, int) {
	max, argmax := ninf, -1
	for i := 0; i < n; i++ {
		delta := calcDelta(c, s, lasts, day, i+1)
		if delta > max {
			max, argmax = delta, i+1
		}
	}
	return max, argmax
}

func calcDelta(c []int, s [][]int, lasts []int, day, contest int) int {
	up := s[day-1][contest-1]
	lasts[contest-1] = day
	down := calcDown(c, lasts, day)
	return up - down
}

func calcDown(c []int, lasts []int, day int) int {
	down := 0
	for i := 0; i < n; i++ {
		down += c[i] * (day - lasts[i])
	}
	return down
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
