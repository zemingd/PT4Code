package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := NewIo(os.Stdin, os.Stdout)
	defer io.Flush()
	_ = io.NextInt()
	s := io.Next()
	r, g, b := []int{}, []int{}, []int{}
	for i := range s {
		switch s[i] {
		case 'R':
			r = append(r, i)
		case 'G':
			g = append(g, i)
		case 'B':
			b = append(b, i)
		}
	}
	//logger.Println(r, g, b)
	ans := len(r) * len(g) * len(b)
	for i := range r {
		for j := range g {
			for k := range b {
				x, y, z := sort3(r[i], g[j], b[k])
				if x-2*y+z == 0 {
					//logger.Println(r[i], g[j], b[k])
					ans--
				}
			}
			/*
				k := sort.Search(len(b), func(k int) bool {
					x, y, z := sort3(r[i], g[j], b[k])
					return x-2*y+z >= 0
				})
				if k == len(b) {
					continue
				}
				x, y, z := sort3(r[i], g[j], b[k])
				if x-2*y+z == 0 {
					ans--
				}
			*/
		}
	}
	io.Println(ans)
}

func sort3(x, y, z int) (int, int, int) {
	if x > y {
		x, y = y, x
	}
	if y > z {
		y, z = z, y
	}
	if x > y {
		x, y = y, x
	}
	return x, y, z
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

// NextInt returns an integer from stdin
func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

// Println is a wrapper of fmt.Fprintln
func (io *Io) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}
