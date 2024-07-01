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

func (io *Io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
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

func count(nList []int, s, e int) int {
	if e >= len(nList) {
		e = len(nList) - 1
	}
	res := 0
	for i := s; i <= e; i++ {
		res += nList[i]
	}
	return res
}

func main() {
	io := NewIo()
	defer io.Flush()

	N := io.NextInt()
	K := io.NextInt()
	S := io.Next()

	nList := make([]int, 0, N/4)
	si := 0

	for i := range S {
		if S[i] != S[si] {
			nList = append(nList, i-si)
			si = i
		}
	}
	nList = append(nList, N-si)

	max := 0
	si = 0
	if S[0] == '0' {
		max = count(nList, 0, 1+2*(K-1))
		si = 1
	}

	for i := si; i < len(nList); i += 2 {
		tmp := count(nList, i, i+2*K)
		if tmp > max {
			max = tmp
		}
	}

	io.PrintLn(max)
}
