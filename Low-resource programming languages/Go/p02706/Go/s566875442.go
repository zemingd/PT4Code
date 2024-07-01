package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 1024
	maxBufSize     = 1e6
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	// writer  = bufio.NewWriterSize(os.Stdout, 1000000)
)

func main() {
	scanner.Split(bufio.ScanWords)
	// scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	// defer writer.Flush()
	n, m := scanInt(), scanInt()
	a := scanInts(m)

	for i := 0; i < m; i++ {
		n -= a[i]
	}

	if n >= 0 {
		fmt.Println(n)
	} else {
		fmt.Println(-1)
	}
}

func scanInt() int {
	i, _ := strconv.Atoi(scanString())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[i] = scanInt()
	}
	return ints
}

func scanFloat64() float64 {
	f, _ := strconv.ParseFloat(scanString(), 64)
	return f
}

func scanFloat64s(size int) []float64 {
	f := make([]float64, size)
	for i := 0; i < size; i++ {
		f[i] = scanFloat64()
	}
	return f
}

func scanString() string {
	scanner.Scan()
	return scanner.Text()
}

func scanStrings(size int) []string {
	s := make([]string, size)
	for i := 0; i < size; i++ {
		s[i] = scanString()
	}
	return s
}
