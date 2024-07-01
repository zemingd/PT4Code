package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	b := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		b[i] = nextInt()
	}

	fmt.Println(solve(n, b))
}

func solve(n int, b []int) int {
	s := b[0] + b[n-2]

	for i := 0; i < n-2; i++ {
		s += min(b[i], b[i+1])
	}

	return s
}
