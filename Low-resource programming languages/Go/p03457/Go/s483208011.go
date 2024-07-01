package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var b2i = map[bool]int8{false: 0, true: 1}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func main() {
	io := newIo()
	N := io.nextInt()
	type whenWhere struct {
		t, x, y int
	}
	flgNG := false
	pre := whenWhere{0, 0, 0}
	for range make([]struct{}, N) {
		now := whenWhere{io.nextInt(), io.nextInt(), io.nextInt()}
		t := now.t - pre.t
		d := abs((now.x + now.y) - (pre.x + pre.y))
		if d > t || t%2 != d%2 {
			flgNG = true
		}
		pre = now
	}
	fmt.Println([...]string{"Yes", "No"}[b2i[flgNG]])
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
