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
	N, A, B := scanInt(sc), scanInt(sc), scanInt(sc)

	fmt.Println(resolve(N, A, B))
}

func resolve(N, A, B int) int {
	ab := A + B

	div := N / ab
	sur := N % ab

	count := div * A

	if sur > A {
		count += A
	} else {
		count += sur
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
	for i:=0; i<n; i++ {
		is[i] = scanInt(sc)
	}

	return is
}
