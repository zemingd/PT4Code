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

var sc *bufio.Scanner

func main() {
	sc = initScanner(os.Stdin)
	A, B, M := scanInt(sc), scanInt(sc), scanInt(sc)

	a := make([]int, A)
	for i := 0; i < A; i++ {
		a[i] = nextInt(sc)
	}

	b := make([]int, B)
	for i := 0; i < B; i++ {
		b[i] = nextInt(sc)
	}

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

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

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

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	return int(a)
}