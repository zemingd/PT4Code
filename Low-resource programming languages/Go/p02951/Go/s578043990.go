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

func main() {
	input := bufio.NewReader(os.Stdin)

	var a, b, c int
	fmt.Fscanf(input, "%d %d %d\n", &a, &b, &c)
	fmt.Println(max(c-(a-b), 0))
}
