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

	var n = nextInt()

	var ws = make([]int, n)
	var a, b = 0, 0
	for i := 0; i < n; i++ {
		ws[i] = nextInt()
		b += ws[i]
	}

	var i = 0
	var diff = -1
	for {
		diff = b - a
		a += ws[i]
		b -= ws[i]

		if a >= b {
			diff = minInt(diff, a-b)
			break
		}
		i++
	}

	fmt.Println(diff)
}
