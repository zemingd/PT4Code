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
	n, x, y := io.NextInt(), io.NextInt()-1, io.NextInt()-1
	dp := make([][]int, n)
	for i := range dp {
		dp[i] = make([]int, n)
		for j := range dp[i] {
			if i == j {
				dp[i][j] = 0
			} else if j == i-1 || j == i+1 {
				dp[i][j] = 1
			} else if (i == x && j == y) || (i == y && j == x) {
				dp[i][j] = 1
			} else {
				dp[i][j] = inf
			}
		}
	}
	for k := 0; k < n; k++ {
		for i := 0; i < n; i++ {
			for j := 0; j < n; j++ {
				if dp[i][k] == inf || dp[k][j] == inf {
					continue
				}
				dp[i][j] = Min(dp[i][j], dp[i][k]+dp[k][j])
			}
		}
	}
	cnt := make([]int, n)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			cnt[dp[i][j]]++
		}
	}
	for i := 1; i < n; i++ {
		io.Println(cnt[i])
	}
}

const inf = math.MaxInt64

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

// Min returns minimum value of inputs
func Min(a ...int) (min int) {
	for i, ai := range a {
		if i == 0 || ai < min {
			min = ai
		}
	}
	return min
}
