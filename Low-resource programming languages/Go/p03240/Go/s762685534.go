package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func check(N, x, y int, xs, ys, hs []int) int {
	result := -1
	for i := 0; i < N; i++ {
		if hs[i] > 0 {
			d := abs(x-xs[i]) + abs(y-ys[i])
			if result > 0 && result != d+hs[i] {
				return 0
			}
			result = d + hs[i]
		}
	}
	for i := 0; i < N; i++ {
		if hs[i] == 0 {
			d := abs(x-xs[i]) + abs(y-ys[i])
			if result > 0 && result > d+hs[i] {
				return 0
			}
		}
	}
	return result
}

func main() {
	N := loadint()
	xs := make([]int, N)
	ys := make([]int, N)
	hs := make([]int, N)
	for i := 0; i < N; i++ {
		xs[i] = loadint()
		ys[i] = loadint()
		hs[i] = loadint()
	}
	cx, cy, ch := 0, 0, 0
LOOP:
	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			h := check(N, x, y, xs, ys, hs)
			if h > 0 {
				cx, cy, ch = x, y, h
				break LOOP
			}
		}
	}
	fmt.Println(cx, cy, ch)
}
