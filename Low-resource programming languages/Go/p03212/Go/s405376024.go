package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	n int
	list = []string{"3", "5", "7"}
)

func dfs(s []string) int {
	ret := 0
	if len(s) > 0 {
		ss := strings.Join(s, "")
		sInt, _ := strconv.Atoi(ss)
		if sInt > n {
			return ret
		} else {
			ok := true
			for _, v := range list {
				if !strings.Contains(ss, v) {
					ok = false
				}
			}
			if ok {
				ret++
			}
		}
	}
	for _, v := range list {
		s = append(s, v)
		ret += dfs(s)
		s = s[:len(s)-1]
	}
	return ret
}

func main() {
	io := NewIo()
	defer io.Flush()

	n = io.readInt()
	var s []string
	io.println(dfs(s))
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

func (io *Io) readStringLine() string {
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

func (io *Io) readString() string {
	for io.nextToken >= len(io.tokens) {
		line := io.readStringLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *Io) readInt() int {
	i, err := strconv.Atoi(io.readString())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

func (io *Io) printStringSlice(a []string) {
	var b []interface{}
	for _, v := range a {
		b = append(b, v)
	}
	io.println(b...)
}

func (io *Io) printIntSlice(a []int) {
	var b []interface{}
	for _, v := range a {
		b = append(b, v)
	}
	io.println(b...)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}
