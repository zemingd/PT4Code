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

const d = 2019

func main() {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	// defer writer.Flush()
	s := scanString()
	l := len(s)
	ans := 0
	for i := 0 ; i < l-3 ; i++ {
		for j := i+3; j < l ;j++ {
			t,_ := strconv.Atoi(s[i:j+1])
			if t % d == 0 {
				ans++
			}
		}
	}

	fmt.Println(ans)
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
