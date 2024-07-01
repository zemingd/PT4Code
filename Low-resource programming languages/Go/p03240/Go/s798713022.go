package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func nextInt3() (int, int, int) {
	return nextInt(), nextInt(), nextInt()
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func height(cx, cy, x, y, h int) int {
	return h + abs(x-cx) + abs(y-cy)
}

func max(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v > ret {
			ret = v
		}
	}
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	n := nextInt()
	x, y, h := make([]int, n), make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		x[i], y[i], h[i] = nextInt3()
	}

	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			ok := true
			k, H := 0, height(cx, cy, x[0], y[0], h[0])
			for k < n && H <= 0 {
				H = height(cx, cy, x[k], y[k], h[k])
				k++
			}
			if H < 1 {
				continue
			}
			for l := 1; ok && l < n; l++ {
				ok = ok && (max(height(cx, cy, x[(k+l)%n], y[(k+l)%n], h[(k+l)%n]), 0) == H)
			}

			if ok {
				puts(cx, cy, H)
				return
			}
		}
	}
}
