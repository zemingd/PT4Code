package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := NewIo()
	defer io.Flush()
	n := io.NextInt()
	s := make([]int, 0, 5)
	bVal := 0
	bIdx := 0
	s = append(s, bVal)
	for i := 0; i < n; i++ {
		ai := io.NextInt()
		if ai > bVal {
			s[bIdx] = ai
		} else {
			idx := search(ai, s)
			if idx < 0 {
				s = append(s, ai)
				bIdx = len(s) - 1
			} else {
				s[idx] = ai
				bIdx = idx
			}
		}
		bVal = ai
	}
	io.PrintLn(len(s))
}

func search(a int, s []int) int {
	idx := -1
	diff := 0
	for i, n := range s {
		if a <= n {
			continue
		}
		if diff == 0 || diff > a-n {
			idx = i
			diff = a - n
		}
		if diff == 1 {
			return idx
		}
	}
	return idx
}

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

func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}
