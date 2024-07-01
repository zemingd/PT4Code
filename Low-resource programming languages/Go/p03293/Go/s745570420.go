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
	parseProblem()
}

func parseProblem() {
	s, t := scanString(sc), scanString(sc)
	matched := false
slip:
	for i := 0; i < len(s); i++ {
		for j := 0; j < len(s); j++ {
			if s[(i+j)%len(s)] != t[j%len(s)] {
				continue slip
			}
		}
		matched = true
	}
	if matched {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
	return
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
