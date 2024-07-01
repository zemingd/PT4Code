package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

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

func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func Log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}

func intMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	// var ap [100000]int
	// var bp [100000]int
	// var x, y, c, p int

	io := NewIo()
	defer io.Flush()
	a := io.NextInt()
	b := io.NextInt()
	c := io.NextInt()

	res := "Yes"
	r := c - a - b
	if r < 0 {
		res = "No"
	} else {
		l := 4 * a * b
		r = a*a + b*b + c*c - 2*a*c - 2*b*c + 2*a*b
		// l := float64(2.0) * math.Sqrt(float64(a*b))
		// // fmt.Printf("%v %v\n", l, r)
		// // fmt.Printf("ab %v\n", int(math.Sqrt(float64(2*a*b))))
		if l < r {
			res = "Yes"
		} else {
			res = "No"
		}
	}

	// if H == 1 || M == 1 {
	// 	res = 1
	// } else if (H%2) == 1 && (M%2) == 1 {
	// 	res = H*M/2 + 1
	// } else {
	// 	res = H * M / 2
	// }
	// fmt.Printf("%v %v %v\n", H, M, res)
	io.PrintLn(res)

	// amin := 10000000
	// for i := 0; i < A; i++ {
	// 	ap[i] = io.NextInt()
	// 	if amin > ap[i] {
	// 		amin = ap[i]
	// 	}
	// }

	// bmin := 100000000
	// for i := 0; i < B; i++ {
	// 	bp[i] = io.NextInt()
	// 	if bmin > bp[i] {
	// 		bmin = bp[i]
	// 	}
	// }

	// min := amin + bmin

	// for i := 0; i < M; i++ {
	// 	x = io.NextInt()
	// 	y = io.NextInt()
	// 	c = io.NextInt()
	// 	p = ap[x-1] + bp[y-1] - c
	// 	if min > p {
	// 		min = p
	// 	}
	// }
}
