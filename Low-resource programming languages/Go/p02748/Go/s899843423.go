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
	// var A, B, M int
	// var M int
	var ap [100000]int
	var bp [100000]int
	var x, y, c, p int

	io := NewIo()
	defer io.Flush()
	A := io.NextInt()
	B := io.NextInt()
	M := io.NextInt()
	// S := io.NextLine()
	// io.PrintLn(A+B+M, S)
	// return
	// // fmt.Scan(&A, &B, &M)

	// // scanner := bufio.NewScanner(os.Stdin)
	// // https://stackoverflow.com/questions/31333353/faster-input-scanning
	amin := 10000000
	for i := 0; i < A; i++ {
		// fmt.Scan(&ap[i])
		ap[i] = io.NextInt()
		if amin > ap[i] {
			amin = ap[i]
		}
	}
	// scanner.Scan()
	// tmp1 := strings.Split(scanner.Text(), " ")
	// for k, i := range tmp1 {
	// 	j, _ := strconv.Atoi(i)
	// 	if amin > j {
	// 		amin = j
	// 	}
	// 	ap[k] = j
	// }

	bmin := 100000000
	for i := 0; i < B; i++ {
		// fmt.Scan(&bp[i])
		bp[i] = io.NextInt()
		if bmin > bp[i] {
			bmin = bp[i]
		}
	}
	// scanner.Scan()
	// tmp1 = strings.Split(scanner.Text(), " ")
	// for k, i := range tmp1 {
	// 	j, _ := strconv.Atoi(i)
	// 	if bmin > j {
	// 		bmin = j
	// 	}
	// 	fmt.Printf("k:%d\n", k)
	// 	bp[k] = j
	// }

	min := amin + bmin
	// fmt.Println(min)

	for i := 0; i < M; i++ {
		// scanner.Scan()
		// fmt.Sscan(scanner.Text(), &x, &y, &c)
		// fmt.Scan(&x, &y, &c)
		x = io.NextInt()
		y = io.NextInt()
		c = io.NextInt()
		p = ap[x-1] + bp[y-1] - c
		// if p < 0 {
		// 	continue
		// }
		// fmt.Printf("%v %v %v %v\n", x, y, c, p)
		if min > p {
			min = p
		}
	}
	// fmt.Printf("A %v \n", ap[0:5])
	// fmt.Printf("B %v %v\n", bp[0:5], bp[1])
	io.PrintLn(min)
	// fmt.Println(min)
}
