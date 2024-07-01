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
	w := nextInt()
	h := nextInt()
	x := nextInt()
	y := nextInt()

	ans := float64(w*h) / float64(2)
	flag := 0
	if x*2 == w && y*2 == h {
		flag = 1
	}

	_, _ = fmt.Fprintf(writer, "%f %d", ans, flag)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
