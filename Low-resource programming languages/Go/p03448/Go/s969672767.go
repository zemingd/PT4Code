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
	a, b, c, x := scanInt(sc), scanInt(sc), scanInt(sc), scanInt(sc)
	rests := map[int]struct{}{}
	for i := 0; i <= a; i++ {
		rests[x-500*i] = struct{}{}
	}
	count := 0
	for i := 0; i <= b; i++ {
		for j := 0; j <= c; j++ {
			if _, ok := rests[100*i+50*j]; ok {
				count++
			}
		}
	}
	return count
}

func resolve(n int) int {
	return n
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