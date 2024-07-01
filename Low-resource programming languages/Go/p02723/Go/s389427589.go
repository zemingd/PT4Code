package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

var sc *bufio.Scanner

const bufferSize = 1024

func nextString() string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, bufferSize)
	sc.Buffer(buf, 1e+7)
	sc.Split(bufio.ScanWords)
	s := nextString()

	if s[2] == s[3] && s[4] == s[5] {
		_, _ = fmt.Fprintf(writer, "Yes")
	} else {
		_, _ = fmt.Fprintf(writer, "No")
	}
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
