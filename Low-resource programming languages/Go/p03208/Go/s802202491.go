package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var N, K int
var hist map[int]int
var low, high int

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()

	fmt.Sscanf(scanner.Text(), "%d %d", &N, &K)

	hist = make(map[int]int)
	for i := 0; i < N; i++ {
		var v int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &v)
		hist[v] = hist[v] + 1
		low = min(low, v)
		high = max(high, v)
	}

	index := sort.Search(N, func(i int) bool {
		return check(i)
	})
	fmt.Println(index)
}

func check(width int) bool {
	for i := low; i <= high-width; i++ {
		sum := 0
		for j := 0; j <= width; j++ {
			sum = sum + hist[i+j]
		}
		if sum >= K {
			return true
		}
	}
	return false
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
