package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Println(resolve(os.Stdin))
}

func resolve(r io.Reader) int {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	a, b, _, k := scanInt(sc), scanInt(sc), scanInt(sc), scanInt(sc)
	max := 0
	if k <= a {
		max += k
		k = 0
	} else {
		max += a
		k -= a
	}
	if k <= b {
		k = 0
	} else {
		k -= b
	}
	max -= k
	return max
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
