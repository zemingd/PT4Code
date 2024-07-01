package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner *bufio.Scanner

func nextInt() int {
	scanner.Scan()

	var i, _ = strconv.Atoi(scanner.Text())

	return i
}

func nextString() string {
	scanner.Scan()

	return scanner.Text()
}

func initScanner() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

// math functuon
func maxInt(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}
func minInt(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func main() {
	initScanner()

	var s = nextInt()
	var p = nextInt()
	var q = nextInt()

	var cost = math.MaxInt32

	cost = minInt(cost, s+p)
	cost = minInt(cost, q+p)
	cost = minInt(cost, s+q)

	fmt.Println(cost)
}
