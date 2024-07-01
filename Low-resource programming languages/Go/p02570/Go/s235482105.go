package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e8
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func abc177_a(D, T, S int) string {
	if D > T*S {
		return "No"
	} else {
		return "Yes"
	}
}

func main() {
	var D, T, S int = nextInt(), nextInt(), nextInt()
	fmt.Println(abc177_a(D, T, S))
}
