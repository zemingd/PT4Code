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
	x := nextInt()
	a := nextInt()
	if x < a {
		_, _ = fmt.Fprint(writer, "0")
	} else {
		_, _ = fmt.Fprint(writer, "10")
	}

}

func main() {
	answer(os.Stdin, os.Stdout)
}
