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
	k := scanInt()
	queue := make([]int, 10, 100001)
	for i := 1; i < 10; i++ {
		queue[i] = i
	}

	ans := 0
	for i := 1; i <= k; i++ {
		ans = queue[i]
		for j := -1; j < 2; j++ {
			m := ans%10 + j
			if m < 0 || m > 9 {
				continue
			}
			n := (ans * 10) + m
			queue = append(queue, n)
		}
	}

	fmt.Println(ans)
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
