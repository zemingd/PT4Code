package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

const mod int64 = 1000000007

func main() {
	io := newIo()
	defer io.Flush()
	X, Y := io.NextInt(), io.NextInt()
	if (2*Y-X)%3 > 0 || (2*X-Y)%3 > 0 {
		fmt.Println(0)
		return
	}
	a := int64((2*Y - X) / 3)
	b := int64((2*X - Y) / 3)

	if a < 0 || b < 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(combMod(a+b, int64(math.Min(float64(a), float64(b)))))
}

func combMod(n, r int64) int64 {
	i := int64(0)
	up := int64(1)
	down := int64(1)
	for i < r {
		up = up * (n - i) % mod
		down = down * (i + int64(1)) % mod
		i++
	}
	return up * powMod(down, mod-2) % mod
}

func powMod(a, b int64) int64 {
	if b == 0 {
		return 1
	}
	if b%2 == 0 {
		res := powMod(a, b/2) % mod
		return res * res % mod
	}
	return a * powMod(a, b-1) % mod
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
