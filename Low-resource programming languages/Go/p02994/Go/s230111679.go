package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func abs(a int, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := nextInt()
	l := nextInt()

	minAbs := math.MaxInt32
	min := math.MaxInt32
	sum := 0

	for i := 1; i <= n; i++ {
		taste := l + i - 1
		abs := abs(taste, 0)
		if abs < minAbs {
			minAbs = abs
			min = taste
		}
		sum += taste
	}

	fmt.Println(sum - min)
}
