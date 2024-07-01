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
	n, k := io.NextInt(), io.NextInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = io.NextInt() - 1
	}
	c := io.NextInts(n)
	ans := solve(n, k, p, c)
	io.Println(ans)
}

func solve(n, k int, p, c []int) int {
	var max int
	for i := 0; i < n; i++ {
		score := play(n, k, i, p, c)
		if i == 0 || score > max {
			max = score
		}
	}
	return max
}

func play(n, k, i int, p, c []int) int {
	score := 0
	scores := []int{}
	j := i
	for {
		if c[p[j]] >= 0 && score+c[p[j]] < score || c[p[j]] < 0 && score+c[p[j]] >= score {
			panic("overflow")
		}
		score += c[p[j]]
		scores = append(scores, score)
		j = p[j]
		if j == i {
			break
		}
	}
	if score < 0 {
		return Max(scores[:Min(k, len(scores))]...)
	}
	q := k / len(scores)
	r := k % len(scores)
	if q == 0 {
		return Max(scores[:k]...)
	}
	if score*q/q != score {
		panic("overflow")
	}
	score *= q
	if r != 0 {
		score += Max(0, Max(scores[:r]...))
	}
	return score
}

// Max returns max value of inputs
func Max(a ...int) (max int) {
	for i, ai := range a {
		if i == 0 || ai > max {
			max = ai
		}
	}
	return max
}

// Min returns minimum value of inputs
func Min(a ...int) (min int) {
	for i, ai := range a {
		if i == 0 || ai < min {
			min = ai
		}
	}
	return min
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
