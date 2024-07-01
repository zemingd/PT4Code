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
	defer io.Flush()
	H, W := io.NextInt(), io.NextInt()
	field := make([][]int, H+2, H+2)
	blacks := make([][]int, 0, H*W)

	for h := range field {
		line := make([]int, W+2, W+2)
		if h == 0 || h == H+1 {
			for w := range line {
				line[w] = -2
			}
		} else {
			str := io.Next()
			line[0] = -2
			line[W-1] = -2
			for w, c := range str {
				if c == '#' {
					blacks = append(blacks, []int{h, w + 1, 0})
					line[w+1] = -0
				} else if c == '.' {
					line[w+1] = -1
				}
			}
		}
		field[h] = line
	}

	result := 0
	dxy := [][]int{
		[]int{0, 1},
		[]int{0, -1},
		[]int{1, 0},
		[]int{-1, 0},
	}
	for {
		if len(blacks) == 0 {
			break
		}
		q := blacks[0]
		blacks = blacks[1:]
		h, w, dis := q[0], q[1], q[2]
		if result < dis {
			result = dis
		}
		for i := range dxy {
			y := h + dxy[i][0]
			x := w + dxy[i][1]
			if field[x][y] != -1 {
				continue
			}
			field[x][y] = dis + 1
			blacks = append(blacks, []int{y, x, dis + 1})
		}
		// pp.Println(len(blacks))
	}
	fmt.Println(result)
	// pp.Print(field)
	// pp.Print(blacks)
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
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

func (io *io) NextLine() string {
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

func (io *io) Next() string {
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
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

func (io *io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func (io *io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}
