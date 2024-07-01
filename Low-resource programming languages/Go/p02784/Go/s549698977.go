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

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	h := nextInt()
	n := nextInt()

	for i := 0;i<n;i++ {
		a := nextInt()
		h -= a
	}

	if h > 0 {
		_, _ = fmt.Fprintf(writer, "No")
	} else {
		_, _ = fmt.Fprintf(writer, "Yes")
	}
}

func main() {
	answer(os.Stdin, os.Stdout)
}
