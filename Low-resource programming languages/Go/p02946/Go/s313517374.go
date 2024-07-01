package main

import (
	"bufio"
	"fmt"
	"os"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	input := bufio.NewReader(os.Stdin)

	var k, x int
	fmt.Fscanf(input, "%d %d\n", &k, &x)
	minX := x - (k - 1)
	maxX := x + (k - 1)
	minX = max(minX, -1000000)
	maxX = min(maxX, 1000000)
	for i := minX; i < maxX; i++ {
		fmt.Printf("%d ", i)
	}
	fmt.Printf("%d", maxX)
}
