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
	x := nextInt()

	flag := false
	for i := 0; i < 2*n-1; i++ {
		if flag == true {
			_, _ = fmt.Fprint(writer, " ")
		}
		flag = true
		_, _ = fmt.Fprintf(writer, "%d", x-n+1+i)
	}
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
