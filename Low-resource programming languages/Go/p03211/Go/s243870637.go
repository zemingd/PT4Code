package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc = initScanner(os.Stdin)
	S := scanString(sc)

	fmt.Println(resolve(S))
}

func resolve(S string) int {
	num, min := 753, math.MaxInt64
	s := strings.Split(S, "")

	for i:=0;i< len(s)-2;i++ {
		ns := strings.Join(s[i:i+3], "")
		n, _ := strconv.Atoi(ns)

		diff := absInt(num-n)

		if min > diff {
			min = diff
		}
	}

	return min
}

func absInt(n int) int {
	if n < 0 {
		return -n
	} else {
		return n
	}
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
