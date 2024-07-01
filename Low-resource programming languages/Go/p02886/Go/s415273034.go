package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	ds := make([]int, n)
	for i := range ds {
		sc.Scan()
		ds[i], _ = strconv.Atoi(sc.Text())
	}
	var sum int
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			sum += ds[i] * ds[j]
		}
	}
	fmt.Println(sum)
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
