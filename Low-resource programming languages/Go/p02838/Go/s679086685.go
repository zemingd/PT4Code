package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var mod uint64 = 1000000007

func main() {
	var n uint64
	fmt.Scan(&n)

	NewReader(int(n))
	a := ReadInts64(" ")

	var ans uint64
	for k := uint(0); k < 60; k++ {
		var x, y uint64
		for _, i := range a {
			if (uint64(i)>>k)&1 == 1 {
				x++
			} else {
				y++
			}
		}

		sum := (x * y) % mod
		for i := uint(0); i < k; i++ {
			sum = (sum * 2) % mod
		}

		ans = (ans + sum) % mod
	}

	fmt.Println(ans)
}

type Reader struct {
	rdr  *bufio.Reader
	size int
}

var reader *Reader

func NewReader(size int) {
	reader = &Reader{
		bufio.NewReaderSize(os.Stdin, size),
		size,
	}
}

func ReadLine() string {
	buf := make([]byte, 0, reader.size)
	for {
		line, isPrefix, err := reader.rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, line...)
		if !isPrefix {
			break
		}
	}
	return string(buf)
}

func ReadStrs(sep string) []string {
	return strings.Split(ReadLine(), sep)
}

func ReadInts64(sep string) []int64 {
	a := ReadStrs(sep)
	n := make([]int64, 0)
	for _, v := range a {
		if i, e := strconv.ParseInt(v, 10, 64); e == nil {
			n = append(n, i)
		}
	}
	return n
}
