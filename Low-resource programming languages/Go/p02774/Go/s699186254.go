package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	a := make([]int, n)
	b := make([]int, n*(n-1)/2)

	for i := range a {
		a[i] = nextInt()
	}
	c := 0
	for i := 0; i < len(a)-1; i++ {
		for j := i + 1; j < len(a); j++ {
			b[c] = a[i] * a[j]
			c++
		}
	}
	sort.Ints(b)

	_, _ = fmt.Fprintf(writer, "%d", b[k-1])
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
