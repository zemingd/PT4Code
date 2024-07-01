package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func max(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}

func min(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func abs(a, b int) int {
	return int(math.Abs(float64(a) - float64(b)))
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b := nextInt(), nextInt()
	if a == b {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
