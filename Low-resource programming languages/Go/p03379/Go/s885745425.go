package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := newIo()
	n := io.nextInt()
	X := make([]int, n)
	for i := range make([]struct{}, n) {
		X[i] = io.nextInt()
	}
	Y := make([]int, n)
	copy(Y, X)
	sort.Ints(Y)

	a := Y[(n-1)/2]
	b := Y[n/2]

	for i := 0; i < n; i++ {
		if X[i] < b {
			io.println(b)
		} else {
			io.println(a)
		}
	}
	io.flush()
}

type io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func newIo() *io {
	return &io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *io) flush() {
	_ = io.writer.Flush()
}

func (io *io) nextLine() string {
	var buffer []byte
	for {
		line, isPrefix, _ := io.reader.ReadLine()
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func (io *io) nextString() string {
	for io.nextToken >= len(io.tokens) {
		line := io.nextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *io) nextInt() int {
	i, _ := strconv.Atoi(io.nextString())
	return i
}

func (io *io) print(a ...interface{}) {
	fmt.Fprint(io.writer, a...)
}

func (io *io) println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *io) printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}
