package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	sc = initScanner(os.Stdin)
	n := scanInt(sc)
	b := scanIntSlice(sc, n-1)
	fmt.Println(resolve(n-1, b))
}

func resolve(n int, b []int) int {
	if n == 1 {
		return b[0]*2
	}

	prev, sum := b[0], b[0] + b[n-1]
	for i:=1;i<n;i++ {
		if prev > b[i] {
			sum += b[i]
		} else {
			sum += prev
		}
		prev = b[i]
	}

	return sum
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

func scanStringSlice(sc *bufio.Scanner, n int) []string {
	ss := make([]string, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		ss[i] = sc.Text()
	}

	return ss
}
