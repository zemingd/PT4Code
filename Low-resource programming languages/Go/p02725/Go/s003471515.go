package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

const bufferSize = 1024

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

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, bufferSize)
	sc.Buffer(buf, 1e+7)
	sc.Split(bufio.ScanWords)
	k := nextInt()
	n := nextInt()
	a := make([]int, n)

	m := 0
	for i := range a {
		a[i] = nextInt()
		if i > 0 {
			m = max(m, a[i]-a[i-1])
		}
	}
	m = max(m, a[0]+k-a[n-1])

	_, _ = fmt.Fprintf(writer, "%d", m)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
