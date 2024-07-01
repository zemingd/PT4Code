package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	a := nextInt64()
	b := nextInt64()
	c := nextInt64()
	d := nextInt64()

	x := int64(math.MinInt64)

	x = max(x, a*c)
	x = max(x, a*d)
	x = max(x, b*c)
	x = max(x, b*d)

	if a <= 0 && b >= 0 || c <= 0 && 0 <= d {
		x = max(x, 0)
	}

	fmt.Println(x)
}

func max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}

func debug(args ...interface{}) {
	fmt.Fprintln(os.Stderr, args...)
}
