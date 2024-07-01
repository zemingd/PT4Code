package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc = initScanner(os.Stdin)
	A, B, M := scanInt(sc), scanInt(sc), scanInt(sc)

	a := scanIntSlice(sc, A)
	b := scanIntSlice(sc, B)

	min := math.MaxInt64
	for i := 0; i < M; i++ {
		tmp := a[scanInt(sc)-1] + b[scanInt(sc)-1] - scanInt(sc)

		if min > tmp {
			min = tmp
		}

	}

	sort.Ints(a)
	sort.Ints(b)
	tmp := a[0] + b[0]
	if min > tmp {
		min = tmp
	}

	fmt.Println(min)
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
	return int(i)
}

func scanIntSlice(sc *bufio.Scanner, n int) []int {
	is := make([]int, n)
	for i:=0; i<n; i++ {
		is[i] = scanInt(sc)
	}

	return is
}
