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

func dfs(sp []string, index, k, maxLen int) int {
	if k == 0 {
		return maxLen
	}

	for i := index; i < len(sp); i += 2 {
		tmp := make([]string, len(sp))
		copy(tmp, sp)
		tmp[i] = strings.Replace(tmp[i], "0", "1", -1)
		if i+1 < len(sp) {
			tmp[i] = tmp[i] + tmp[i+1]
			tmp = append(tmp[:i+1], tmp[i+2:]...)
		}

		if i-1 >= 0 {
			tmp[i-1] = tmp[i-1] + tmp[i]
			tmp = append(tmp[:i], tmp[i+1:]...)
			i--
		}

		if len(tmp[i]) > maxLen {
			maxLen = len(tmp[i])
		}

		l := dfs(tmp, i+1, k-1, maxLen)
		if l > maxLen {
			maxLen = l
		}
	}
	return maxLen
}

func main() {
	io := NewIo()
	defer io.Flush()

	N := io.NextInt()
	K := io.NextInt()
	S := io.Next()

	Ssplit := make([]string, 0, N/4)
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
			Ssplit = append(Ssplit, S[si:i])
			si = i
		}
	}
	Ssplit = append(Ssplit, S[si:N])

	index := 0
	if Ssplit[0][0] == '1' {
		index = 1
	}

	io.PrintLn(dfs(Ssplit, index, K, maxLen))
}
