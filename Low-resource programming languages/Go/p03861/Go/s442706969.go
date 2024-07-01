package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

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

func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) NextLong() int64 {
	i, err := strconv.ParseInt(io.Next(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) NextDouble() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) PrintLn(a ...interface{}) {
	for i, v := range a {
		if i > 0 {
			io.writer.WriteByte(' ')
		}
		fmt.Fprint(io.writer, v)
	}
	io.writer.WriteByte('\n')
}

func (io *Io) PrintfLn(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format + "\n", a...)
}

func (io *Io) PrintIntLn(a ...int) {
	for i, v := range a {
		if i > 0 {
			io.writer.WriteByte(' ')
		}
		fmt.Fprint(io.writer, v)
	}
	io.writer.WriteByte('\n')
}

func (io *Io) PrintStringLn(a ...string) {
	for i, v := range a {
		if i > 0 {
			io.writer.WriteByte(' ')
		}
		fmt.Fprint(io.writer, v)
	}
	io.writer.WriteByte('\n')
}

type Tuple2 struct {
	first, second int
}

func main() {
	io := NewIo()
	defer io.Flush()
	a, b, x := io.NextLong(), io.NextLong(), io.NextLong()
	divA := (a - 1) / x
	divB := b / x
	fmt.Println(divB - divA)
}
