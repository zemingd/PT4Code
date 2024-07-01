package main

import (
	"bufio"
	"fmt"
	"math"
	"math/rand"
	"os"
	"strconv"
	"sync"
)

const (
	MX_INT int64 = math.MaxInt64
	MN_INT int64 = math.MinInt64
)

func main() {
	n, k := ScanInt64(), ScanInt64()
	a := ScanInt64Slice(int(n))

	totalCombinationiCount := n * (n - 1) / 2
	r := make([]int64, totalCombinationiCount)
	ri := 0

	for i := 0; i < int(n); i++ {
		for j := i + 1; j < int(n); j++ {
			r[ri] = a[i] * a[j]
			ri++
		}
	}
	quicksort(r)

	P(r[k-1])

	close(O)
	oWg.Wait()
}

func quicksort(a []int64) []int64 {
	if len(a) < 2 {
		return a
	}

	left, right := 0, len(a)-1

	pivot := rand.Int() % len(a)

	a[pivot], a[right] = a[right], a[pivot]

	for i, _ := range a {
		if a[i] < a[right] {
			a[left], a[i] = a[i], a[left]
			left++
		}
	}

	a[left], a[right] = a[right], a[left]

	quicksort(a[:left])
	quicksort(a[left+1:])

	return a
}

/*********************** I/O ***********************/

var O chan string
var in *bufio.Scanner
var oWg *sync.WaitGroup
var P func(a ...interface{}) (n int, err error)

func init() {
	P = fmt.Println

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e+9))
	in.Split(bufio.ScanWords)

	O = make(chan string, 16)
	oWg = &sync.WaitGroup{}
	oWg.Add(1)

	writer := bufio.NewWriter(os.Stdout)
	go func() {
		defer oWg.Done()
		defer writer.Flush()

		for line := range O {
			writer.WriteString(line + "\n")
		}
	}()
}

func ScanWord() string { in.Scan(); return in.Text() }
func ScanInt() int     { i, _ := strconv.Atoi(ScanWord()); return i }
func ScanInt64() int64 { i, _ := strconv.ParseInt(ScanWord(), 10, 64); return i }
func ScanStringSlice(n int) []string {
	s := make([]string, n)
	for i := 0; i < n; i++ {
		s[i] = ScanWord()
	}
	return s
}
func ScanInt64Slice(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i] = ScanInt64()
	}
	return arr
}

/*********************** Utils ***********************/

func S(v interface{}) string { return fmt.Sprintf("%v", v) }
func MnMx(args ...int64) (int64, int64) {
	minVal, maxVal := MX_INT, MN_INT
	for _, v := range args {
		if v < minVal {
			minVal = v
		}
		if v > maxVal {
			maxVal = v
		}
	}
	return minVal, maxVal
}
func LCM(a, b int64) int64 { return a / GCD(a, b) * b }
func GCD(a, b int64) int64 {
	if a == 0 {
		return b
	}
	return GCD(b%a, a)
}
func abs(x int64) int64 {
	if x < 0 {
		return -x
	}
	return x
}
