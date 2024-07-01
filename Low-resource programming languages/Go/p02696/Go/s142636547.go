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
	a, b, n := scanInt(sc), scanInt(sc), scanInt(sc)
	candidates := []int{}
	candidates = append(candidates, a*n/b-a*(n/b))
	candidates = append(candidates, a*(n-1)/b-a*((n-1)/b))
	if n >= b {
		candidates = append(candidates, a)
		candidates = append(candidates, 0)
	}
	fmt.Println(max(candidates))
}

func max(a []int) int {
	m := a[0]
	for _, v := range a {
		if v > m {
			m = v
		}
	}
	return m
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
