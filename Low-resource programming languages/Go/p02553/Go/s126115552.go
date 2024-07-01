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

func nextInt() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func max(x, y int64) int64 {
	if x > y {
		return x
	}
	return y
}

func main() {
	a, b, c, d := nextInt(), nextInt(), nextInt(), nextInt()
	fmt.Println(max(max(a*c, a*d), max(b*c, b*d)))
}
