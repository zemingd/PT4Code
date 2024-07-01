package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Println("%d", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) int {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	h, w := scanInt(sc), scanInt(sc)
	if h == 1 || w == 1 {
		return 1
	}
	blockNum := (h+1)/2 + h/2
	return blockNum*(w/2) + (h+1)/2*(w%2)
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
