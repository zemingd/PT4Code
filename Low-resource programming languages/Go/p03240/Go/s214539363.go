package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := newIo()
	defer io.Flush()
	N := io.NextInt()
	X, Y, H := []int{}, []int{}, []int{}
	H0 := [][2]int{}
	for i := 0; i < N; i++ {
		x, y, h := io.NextInt(), io.NextInt(), io.NextInt()
		if h > 0 {
			X = append(X, x)
			Y = append(Y, y)
			H = append(H, h)
		} else {
			H0 = append(H0, [2]int{x, y})
		}
	}
	h := -1
	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			for i := 0; i < len(X); i++ {
				if H[i] == 0 {
					continue
				}
				if h == -1 {
					h = H[i] + int(math.Abs(float64(x-X[i]))+math.Abs(float64(y-Y[i])))
				} else {
					h2 := H[i] + int(math.Abs(float64(x-X[i]))+math.Abs(float64(y-Y[i])))
					if h != h2 {
						h = -1
						break
					}
				}
			}
			for _, h0 := range H0 {
				if h-int(math.Abs(float64(x-h0[0]))+math.Abs(float64(y-h0[1]))) > 0 {
					h = -1
					break
				}
			}
			if h != -1 {
				io.PrintIntLn([]int{x, y, h})
				return
			}
		}
	}
	io.PrintIntLn([]int{0, 0, 0})
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
