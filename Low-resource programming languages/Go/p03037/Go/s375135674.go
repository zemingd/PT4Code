package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	sc = initScanner(os.Stdin)
	n, m := scanInt(sc), scanInt(sc)
	fmt.Println(resolve(n, m))
}

func resolve(n, m int) int {
	maxl, minr := 0, math.MaxInt64
	for i := 0; i < m; i++ {
		l, r := scanInt(sc), scanInt(sc)

		if maxl < l {
			maxl = l
		}
		if minr > r {
			minr = r
		}
	}

	count := 0
	for i := maxl; i <= minr; i++ {
		count++
	}

	return count
}

// --------------- BASE DEFINITIONS ---------------

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanIntSlice(sc *bufio.Scanner, n int) []int {
	is := make([]int, n)
	for i := 0; i < n; i++ {
		is[i] = scanInt(sc)
	}

	return is
}

func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
