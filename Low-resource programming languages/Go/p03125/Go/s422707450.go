package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	sc.Split(bufio.ScanWords)
	a := nextInt()
	b := nextInt()
	var c int
	if b%a == 0 {
		c = b + a
	} else {
		c = b - a
	}
	fmt.Fprintf(writer, "%d", c)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
