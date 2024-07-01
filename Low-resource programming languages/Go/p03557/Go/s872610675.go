package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := newIo()
	n := io.nextInt()

	seq := []int{}
	for i := 2; i >= 0; i-- {
		for range make([]struct{}, n) {
			k := io.nextInt()
			seq = append(seq, k*10+i)
		}
	}
	sort.Ints(seq)

	var ans, i, j int
	for _, v := range seq {
		switch 'C' - v%10 {
		case 'A':
			i++
		case 'B':
			ans += i * (n - j)
		case 'C':
			j++
		}
	}
	fmt.Println(ans)
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
