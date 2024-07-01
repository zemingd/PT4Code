package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("%d\n", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, []int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n := scanInt(sc)
	ds := make([]int, 0, n)
	for i := 0; i < n; i++ {
		ds = append(ds, scanInt(sc))
	}
	return n, ds
}

func resolve(n int, ds []int) int {
	sum := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			sum += ds[i] * ds[j]
		}
	}
	return sum
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
