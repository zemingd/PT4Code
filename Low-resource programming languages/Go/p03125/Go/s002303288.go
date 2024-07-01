package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc = NewScanner(os.Stdin, 1000000)

func main() {
	A := sc.readInt()
	B := sc.readInt()
	if B%A == 0 {
		fmt.Println(A + B)
	} else {
		fmt.Println(B - A)
	}
}

type Scanner struct {
	*bufio.Scanner
}

func (scn *Scanner) readInt() int {
	scn.Scanner.Scan()
	i, _ := strconv.Atoi(scn.Scanner.Text())
	return i
}

func NewScanner(r io.Reader, bufSize int) *Scanner {
	buf := make([]byte, bufSize)
	scn := bufio.NewScanner(r)
	scn.Buffer(buf, bufSize)
	scn.Split(bufio.ScanWords)
	return &Scanner{scn}
}
