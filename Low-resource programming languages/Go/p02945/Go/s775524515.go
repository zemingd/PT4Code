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

func max(a ...int) int {
	res := a[0]
	for i := 1; i < len(a); i++ {
		if res < a[i] {
			res = a[i]
		}
	}
	return res
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	a := nextInt()
	b := nextInt()

	_, _ = fmt.Fprintf(writer, "%d", max(a+b, a-b, a*b))
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
