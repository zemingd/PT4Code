package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	io := newIo()
	defer io.Flush()

	n := io.NextInt()
	k := io.NextInt()

	var one int
	for i := range make([]struct{}, n) {
		if io.NextInt() == 1 {
			one = i
		}
	}
	pos := one
	cnt := 0
	bonus := 0

	for pos > 0 {
		pos -= k - 1
		cnt++
		if pos < 0 {
			bonus += -pos
		}
	}
	pos = one
	for pos < n-1 {
		pos += k - 1
		cnt++
		if pos >= n {
			bonus += pos - (n - 1)
		}
	}
	io.Println(cnt - bonus/(k-1))
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

func (io *io) Flush() {
	_ = io.writer.Flush()
}

func (io *io) NextLine() string {
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

func (io *io) NextWord() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *io) NextInt() int {
	i, _ := strconv.Atoi(io.NextWord())
	return i
}

func (io *io) Print(a ...interface{}) {
	fmt.Fprint(io.writer, a...)
}

func (io *io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}
