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

	var a, b int
	fmt.Fscanf(input, "%d %d\n", &a, &b)
	fmt.Println(max(max(a+b, a-b), a*b))
}
