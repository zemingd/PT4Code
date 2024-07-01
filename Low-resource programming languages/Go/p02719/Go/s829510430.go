package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	fmt.Println(resolve(parseProblem()))
}

func parseProblem() (int, int) {
	return scanInt(sc), scanInt(sc)
}

func operation(n, k int) int {
	var v int
	if n > k {
		v = n % k
	} else {
		v = k - n
	}
	if v < n {
		return v
	}
	return n
}

func resolve(n int, k int) int {
	c := n
	tmp := operation(c, k)
	for c != tmp {
		c = tmp
		tmp = operation(c, k)
	}
	return c
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
