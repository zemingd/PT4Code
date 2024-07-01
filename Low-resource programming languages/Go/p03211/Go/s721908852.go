package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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
	str := scanString(sc)
	min := math.MaxInt64
	for i := 0; i+2 < len(str); i++ {
		i, _ := strconv.Atoi(str[i : i+3])
		if v := abs(int(i) - 753); min > v {
			min = v
		}
	}
	return min
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func resolve(n int) int {
	return n
}

// snip-scan-funcs
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
