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
	fmt.Printf("%d\n", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, int, []int, []int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n, w := scanInt(sc), scanInt(sc)
	ws, vs := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		ws[i] = scanInt(sc)
		vs[i] = scanInt(sc)
	}

	return n, w, ws, vs
}

func resolve(n, w int, ws, vs []int) int {
	states := make([][]int, n)
	states[0] = make([]int, w)
	for j := 0; j < w; j++ {
		if j >= ws[0]-1 {
			changeToMax(&(states[0][j]), vs[0])
		}
	}
	for i := 1; i < n; i++ { // 0-indexed
		states[i] = make([]int, w)
		for j := 0; j < w; j++ {
			if j+1-ws[i] > 0 {
				changeToMax(&(states[i][j]), states[i-1][j+1-ws[i]]+vs[i])
			}
			changeToMax(&(states[i][j]), states[i-1][j])
		}
	}
	return states[n-1][w-1]
}

const (
	inf  = math.MaxInt32
	ninf = math.MinInt32
)

func changeToMin(v *int, cand int) (updated bool) {
	if *v > cand {
		*v = cand
		updated = true
	}
	return updated
}

func changeToMax(v *int, cand int) (updated bool) {
	if *v < cand {
		*v = cand
		updated = true
	}
	return updated
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
