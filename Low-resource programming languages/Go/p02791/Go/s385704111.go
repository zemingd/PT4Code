package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	P := make([]int, N)
	for i := 0; i < N; i++ {
		P[i] = nextInt(sc)
	}
	// fmt.Println("N", N, "P", P)
	minp, maxp, ans := int(1e6), 0, 0
	for i := 0; i < N; i++ {
		minp = min(minp, P[i])
		maxp = max(maxp, P[i])
		if minp >= P[i] {
			ans++
		}
	}
	fmt.Println(ans)
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
