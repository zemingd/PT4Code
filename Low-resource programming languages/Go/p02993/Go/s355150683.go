package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

var sc *bufio.Scanner

const BufferSize = 1024

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
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	s := nextString()
	flag := false
	for i := 1; i < len(s); i++ {
		if s[i-1] == s[i] {
			flag = true
			break
		}
	}

	if flag {
		_, _ = fmt.Fprint(writer, "Bad")
	} else {
		_, _ = fmt.Fprint(writer, "Good")
	}
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
