package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

type drink struct {
	taste int
}

type drinkList []drink

func (d drinkList) Len() int {
	return len(d)
}

func (d drinkList) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func (d drinkList) Less(i, j int) bool {
	return d[i].taste > d[j].taste
}

func dif(dList drinkList, index int) int {
	return dList[index].taste - dList[index+1].taste
}

func min(a, b int) int {
	if a > b {
		return b
	}

	return a
}

func main() {
	io := NewIo()
	defer io.Flush()

	X := io.NextInt()
	Y := io.NextInt()
	Z := io.NextInt()
	K := io.NextInt()

	listA := make(drinkList, X)
	for i := range listA {
		listA[i].taste = io.NextInt()
	}
	listB := make(drinkList, Y)
	for i := range listB {
		listB[i].taste = io.NextInt()
	}
	listC := make(drinkList, Z)
	for i := range listC {
		listC[i].taste = io.NextInt()
	}

	sort.Sort(listA)
	sort.Sort(listB)
	sort.Sort(listC)

	result := make(drinkList, 0, min(K, X*Y*Z))

	for i := 0; i < X; i++ {
		for j := 0; j < Y; j++ {
			for k := 0; k < Z; k++ {
				if (i+1)*(j+1)*(k+1) <= 3000 {
					result = append(result, drink{listA[i].taste + listB[j].taste + listC[k].taste})
				}
			}
		}
	}

	sort.Sort(result)

	for i := 0; i < min(K, X*Y*Z); i++ {
		io.PrintLn(result[i].taste)
	}
}
