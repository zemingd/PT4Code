package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 64 * 1024
	maxBufSize     = 10000000
)

var (
	scanner = bufio.NewScanner(os.Stdin)
)

func main() {
	scanner.Split(bufio.ScanWords)
	n, k := scanInt(), scanInt()
	p := scanFloat64s(n)

	cal := func(n float64) float64 {
		return (n + 1) / 2
	}

	cum := make([]float64, n+1)
	for i := 0; i < n; i++ {
		cum[i+1] = cum[i] + cal(p[i])
	}

	high := 0.
	for i := k; i <= n; i++ {
		if exp := cum[i] - cum[i-k]; exp > high {
			high = exp
		}
	}

	fmt.Println(high)
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[i] = scanInt()
	}
	return ints
}

func scanFloat64() float64 {
	f, _ := strconv.ParseFloat(scanText(), 64)
	return f
}

func scanFloat64s(size int) []float64 {
	f := make([]float64, size)
	for i := 0; i < size; i++ {
		f[i] = scanFloat64()
	}
	return f
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}
