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
	n := io.nextInt()
	dic := map[int]struct{}{}

	for range make([]struct{}, n) {
		a := io.nextInt()
		if _, in := dic[a]; !in {
			dic[a] = struct{}{}
		} else {
			delete(dic, a)
		}
	}
	fmt.Println(len(dic))
}

type io struct {
	reader    *bufio.Reader
	tokens    []string
	nextToken int
}

func newIo() *io {
	return &io{
		reader: bufio.NewReader(os.Stdin),
	}
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
