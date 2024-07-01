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

func parseProblem() int {
	return scanInt(sc)
}

func resolve(s int) int {
	exists := map[int]struct{}{}
	v := s
	exists[v] = struct{}{}
	for i := 2; i <= 1000000; i++ {
		v = next(v)
		if _, ok := exists[v]; ok {
			return i
		}
		exists[v] = struct{}{}
	}
	// no path
	return -1
}

func next(n int) int {
	if n%2 == 0 {
		return n / 2
	}
	return 3*n + 1
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}