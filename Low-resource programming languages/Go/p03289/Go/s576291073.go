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
	s := scanString(sc)
	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}
	Count := 0
	for i := 1; i < len(s); i++ {
		if s[i] == 'C' && i > 1 && i < len(s)-1 {
			Count++
			continue
		}
		if !small(s[i]) {
			fmt.Println("WA")
			return
		}
	}
	if Count != 1 {
		fmt.Println("WA")
		return
	}
	fmt.Println("AC")
}

func small(c byte) bool {
	return c >= 'a' && c <= 'z'
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
