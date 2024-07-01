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

func dfs(sp []n, index, k, maxLen int) int {
	if k == 0 {
		return maxLen
	}

	for i := index; i < len(sp); i += 2 {
		tmp := make([]n, len(sp))
		copy(tmp, sp)
		if i+1 < len(sp) {
			tmp[i].l = tmp[i].l + tmp[i+1].l
			tmp[i].ud = '1'
			tmp = append(tmp[:i+1], tmp[i+2:]...)
		}

		if i-1 >= 0 {
			tmp[i-1].l = tmp[i-1].l + tmp[i].l
			tmp = append(tmp[:i], tmp[i+1:]...)
			i--
		}

		if tmp[i].l > maxLen {
			maxLen = tmp[i].l
		}

		l := dfs(tmp, i+1, k-1, maxLen)
		if l > maxLen {
			maxLen = l
		}
	}
	return maxLen
}

type n struct {
	l  int
	ud byte
}

func main() {
	io := NewIo()
	defer io.Flush()

	N := io.NextInt()
	K := io.NextInt()
	S := io.Next()

	nList := make([]n, 0, N/4)
	si := 0

	maxLen := 0
	if S[0] == '1' {
		maxLen = 1
	}

	for i := range S {
		if S[i] != S[si] {
			if S[si] == '1' && maxLen < i-si {
				maxLen = i - si
			}
			nList = append(nList, n{i - si, S[si]})
			si = i
		}
	}
	nList = append(nList, n{N - si, S[si]})

	index := 0
	if nList[0].ud == '1' {
		index = 1
	}

	io.PrintLn(dfs(nList, index, K, maxLen))
}
