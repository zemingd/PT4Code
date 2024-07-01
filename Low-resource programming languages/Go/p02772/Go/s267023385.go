package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	parseProblem(os.Stdin)
}

func parseProblem(r io.Reader) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines

	n := scanInt(sc)
	for i := 0; i < n; i++ {
		v := scanInt(sc)
		if v%2 == 1 {
			continue
		}
		if !(v%3 == 0 || v%5 == 0) {
			fmt.Println("DENIED")
			return
		}
	}
	fmt.Println("APPROVED")
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
