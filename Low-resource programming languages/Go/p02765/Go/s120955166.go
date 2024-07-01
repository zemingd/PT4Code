package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 1024
	maxBufSize     = 1e6
)

var (
	scanner = bufio.NewScanner(os.Stdin)
)

func main() {
	scanner.Split(bufio.ScanWords)
	n, r := scanInt(), scanInt()
	if n < 10 {
		fmt.Println(r + (100 * (10 - n)))
	} else {
		fmt.Println(r)
	}
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

func scanTexts(size int) []string {
	s := make([]string, size)
	for i := 0; i < size; i++ {
		s[i] = scanText()
	}
	return s
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

// greatest common divisor(最大公約数)
func gcd(a, b int) int {

	if a < b {
		a, b = b, a
	}

	for {
		mod := a % b
		if mod == 0 {
			return b
		}
		a, b = b, mod
	}
}

// latest common multiple(最小公倍数)
func lcm(a, b int) int {
	return (a / gcd(a, b)) * b
}
