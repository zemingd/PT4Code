package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	N := scanInt(sc)
	K := scanInt(sc)
	hs := make([]int, N)
	for i := 0; i < N; i++ {
		hs[i] = scanInt(sc)
	}

	costs := make([]int, N)
	costs[0] = 0
	costs[1] = abs(hs[1] - hs[0])
	for i := 2; i < N; i++ {
		minCost := 10000
		for j := 1; j <= K && j <= i; j++ {
			cost := costs[i-j] + abs(hs[i]-hs[i-j])
			if cost < minCost {
				minCost = cost
			}
		}
		costs[i] = minCost
	}
	fmt.Println(costs[N-1])
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
