package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

const INF int = 1e6

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	X, N := nextInt(), nextInt()
	best_d := INF
	best_i := INF
	ng := make([]bool, 102)
	for i := 0; i <= N; i++ {
		p := nextInt()
		ng[p] = true
	}

	for i := 0; i <= 101; i++ {
		if !ng[i] && abs(i-X) < best_d {
			best_d = abs(i - X)
			best_i = i
		}
	}

	fmt.Fprintln(out, best_i)
}
