package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	fmt.Println((scanInt() + 1) / 2)
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[0] = scanInt()
	}
	return ints
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}
