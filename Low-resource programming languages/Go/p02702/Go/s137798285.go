package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"strings"
)

const mod = 2019

var logger = log.New(os.Stderr, "", 0)

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	s := io.Next()
	ans := solve(s)
	io.Println(ans)
}

func solve(s string) (ans int) {
	n := len(s)
	a := make([]int, n)
	pow := 1
	for i := range a {
		digit := int(s[n-1-i] - '0')
		a[n-1-i] = digit * pow % mod
		pow = pow * 10 % mod
	}
	cs := make([]int, n+1)
	for i := range a {
		cs[i+1] = (cs[i] + a[i]) % mod
	}
	cnt := map[int]int{}
	for i := range cs {
		ans += cnt[cs[i]]
		cnt[cs[i]]++
	}
	logger.Println("s", s)
	logger.Println("a", a)
	logger.Println("cs", cs)
	logger.Println("cnt", cnt)
	return ans
}

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

// Println is a wrapper of fmt.Fprintln
func (io *Io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}
