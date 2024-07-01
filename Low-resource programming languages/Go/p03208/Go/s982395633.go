package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := newIo()
	defer io.Flush()

	N := io.NextInt()
	K := io.NextInt()

	h := make([]int, N)
	for i := range h {
		h[i] = io.NextInt()
	}
	sort.Ints(h)

	ans := math.MaxInt32
	for i := 0; i+K-1 < N; i++ {
		cnt := h[i+K-1] - h[i]
		ans = min(ans, cnt)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

type io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func newIo() *io {
	return &io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *io) Flush() {
	_ = io.writer.Flush()
}

func (io *io) NextLine() string {
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

func (io *io) NextString() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

func (io *io) NextInt() int {
	i, _ := strconv.Atoi(io.NextString())
	return i
}
