package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := newIo()
	defer io.flush()

	n := io.nextInt()
	b := make([]int, n)

	for i := range b {
		a := io.nextInt()
		b[n/2-((i+1)/2)*[]int{-1, 1}[(n+i)%2]] = a
	}

	for i := range b {
		if i != 0 {
			io.print(" ")
		}
		io.print(b[i])
	}
	io.println()
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
