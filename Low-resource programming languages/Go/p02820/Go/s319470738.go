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

const (
	Rock     byte = 'r'
	Scissors byte = 's'
	Paper    byte = 'p'
)

func main() {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	n, k, r, s, p := scanInt(), scanInt(), scanInt(), scanInt(), scanInt()
	point := make(map[byte]int, 3)
	point[Rock] = r
	point[Scissors] = s
	point[Paper] = p

	t := []byte(scanText())
	selected := make([]byte, n)
	ans := 0
	for i := 0; i < n; i++ {
		prev := (i - k)
		rsp := win(t[i])
		if prev < 0 || selected[prev] != rsp {
			ans += point[rsp]
			selected[i] = rsp
			continue
		}
	}

	fmt.Println(ans)
}

func win(rsp byte) (w byte) {
	switch rsp {
	case Rock:
		w = Paper
	case Scissors:
		w = Rock
	case Paper:
		w = Scissors
	}
	return
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
