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
	fmt.Printf("%d\n", resolve(os.Stdin))
}

func resolve(r io.Reader) int {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n := scanInt(sc)
	h := make([]int, n+1)
	h[0] = math.MaxInt64
	for i := 1; i <= n; i++ {
		h[i] = scanInt(sc)
	}
	minCost := make([]int, n+1)
	for i := 2; i <= n; i++ {
		c1 := minCost[i-1] + abs(h[i-1]-h[i])
		c2 := minCost[i-2] + abs(h[i-2]-h[i])
		minCost[i] = min(c1, c2)
	}
	return minCost[n]
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
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
