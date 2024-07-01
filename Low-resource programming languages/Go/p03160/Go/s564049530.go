package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	rdr := NewReader(n)
	h := ReadInts(rdr)

	m := make([]int, n)
	m[1] = Abs(h[0] - h[1])

	for i := 2; i < n; i++ {
		a := m[i-1] + Abs(h[i]-h[i-1])
		b := m[i-2] + Abs(h[i]-h[i-2])
		m[i] = Min(a, b)
	}

	fmt.Println(m[n-1])
}

func Min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func Abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}


func ReadInts(rdr *Reader) (n []int) {
	for _, v := range ReadStrs(rdr) {
		if i, e := strconv.Atoi(v); e == nil {
			n = append(n, i)
		}
	}
	return n
}

type Reader struct {
	rdr  *bufio.Reader
	size int
	sep  string
}

func NewReader(size int) *Reader {
	return &Reader{
		rdr:  bufio.NewReaderSize(os.Stdin, size),
		size: size,
		sep:  " ",
	}
}
