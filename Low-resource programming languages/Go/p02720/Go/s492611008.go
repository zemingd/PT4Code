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

	cnt := 0
	tmp := 10
	for i := 1; ; i++ {

		if isRunRun(i) {
			cnt++
		} else {
			i = nextRunRun(i)
		}

		if cnt == k {
			fmt.Println(i)
			return
		}

		if i%tmp == 0 {
			fmt.Println(i, cnt)
			tmp *= 10
		}
	}

}

func isRunRun(n int) bool {

	m := n % 10
	for r := n / 10; r > 0; r /= 10 {
		m2 := r % 10
		if abs(m2-m) > 1 {
			return false
		}

		m = m2
	}

	return true
}

func digit(n int) int {

	d := 0
	for i := n; i > 0; i /= 10 {
		d++
	}
	return d
}

func nextRunRun(noRunRun int) int {
	digit := digit(noRunRun)
	d := pow(10, digit-1)
	r := ((noRunRun / d) + 1) * d
	m := (r / d) - 1
	if m == 0 {
		m = 1
	}

	for i := 1; i < d; i *= 10 {
		r += m * i
	}

	return r
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
