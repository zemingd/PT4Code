package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type part struct {
	category rune
	size     int
}

type parts []part
type byCategory struct{ parts }
type bySize struct{ parts }

func (p parts) Len() int                { return len(p) }
func (p parts) Swap(i, j int)           { p[i], p[j] = p[j], p[i] }
func (b byCategory) Less(i, j int) bool { return b.parts[i].category < b.parts[j].category }
func (b bySize) Less(i, j int) bool     { return b.parts[i].size < b.parts[j].size }

func main() {
	io := newIo()
	n := io.nextInt()

	seq := []part{}
	for i := range make([]struct{}, 3) {
		for range make([]struct{}, n) {
			seq = append(seq, part{rune('A' + i), io.nextInt()})
		}
	}
	sort.Stable(sort.Reverse(byCategory{seq}))
	sort.Stable(bySize{seq})

	var ans, i, j int
	for _, v := range seq {
		switch v.category {
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
