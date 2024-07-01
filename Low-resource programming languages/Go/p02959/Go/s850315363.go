package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
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
	a := make([]int, n+1)
	b := make([]int, n)

	for i := range a {
		a[i] = nextInt()
	}
	for i := range b {
		b[i] = nextInt()
	}
	ans := 0

	debugf("before: %v\n", a)
	for i := range b {
		if a[i] <=  b[i] {
			ans += a[i]
			b[i] -= a[i]
			a[i] = 0
			if a[i+1] <=  b[i] {
				ans += a[i+1]
				b[i] -= a[i+1]
				a[i+1] = 0
			} else {
				ans += b[i]
				a[i+1] -= b[i]
			}
		} else {
			ans += b[i]
			a[i] -= b[i]
		}
	}
	debugf("after: %v\n", a)

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
