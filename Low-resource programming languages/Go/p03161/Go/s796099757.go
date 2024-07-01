package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	k := scanInt(sc)
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		hs[i] = scanInt(sc)
	}

	costs := make([]int, n)
	costs[0] = 0
	costs[1] = abs(hs[1] - hs[0])

	for i := 2; i < n; i++ {
		minCost := math.MaxInt32
		for c := 1; c <= k && c <= i; c++ {
			cost := costs[i-c] + abs(hs[i]-hs[i-c])
			if cost < minCost {
				minCost = cost
			}
		}
		costs[i] = minCost
	}

	fmt.Println(costs[n-1])
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
