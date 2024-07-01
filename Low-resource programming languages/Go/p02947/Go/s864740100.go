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
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	n := scanInt()
	anagrams := make(map[string]int, n)
	for i := 0; i < n; i++ {
		s := sort(scanText())
		anagrams[s]++
	}

	ans := 0
	for _, v := range anagrams {
		ans += (v * (v - 1)) / 2
	}

	fmt.Println(ans)
}

func sort(s string) string {
	len := len(s)
	b := []byte(s)
	for i := 0; i < len; i++ {
		min := i
		for j := (i + 1); j < len; j++ {
			if b[j] < b[min] {
				min = j
			}
		}
		b[i], b[min] = b[min], b[i]
	}
	return string(b)
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
	return int(math.Abs(float64(n)))
}

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

func min(n []int) (min, idx int) {
	min = math.MaxInt64
	for i := 0; i < len(n); i++ {
		if n[i] < min {
			min = n[i]
			idx = i
		}
	}
	return
}

func max(n []int) (max, idx int) {
	max = math.MinInt64
	for i := 0; i < len(n); i++ {
		if n[i] > max {
			max = n[i]
			idx = i
		}
	}
	return
}
