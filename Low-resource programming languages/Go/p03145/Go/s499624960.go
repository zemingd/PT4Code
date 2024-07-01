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
	ab := sc.readInt()
	bc := sc.readInt()
	_ = sc.readInt()
	fmt.Println(ab * bc / 2)
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
