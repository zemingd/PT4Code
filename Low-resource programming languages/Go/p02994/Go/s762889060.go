package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var isProduct = true

func main() {
	nextReader = newScanner()

	n := nextInt()
	l := nextInt()

	min := 0
	sums := 0

	for i := 0; i < n; i++ {
		score := l + i - 1 + 1

		debugln(i, score)
		sums += score

		delta := abs(score)

		if i == 0 || delta < abs(min) {
			min = score
		}

	}

	fmt.Println(sums - min)
}

func abs(i int) int {
	return int(math.Abs(float64(i)))
}

func debugln(s ...interface{}) {
	if !isProduct {
		fmt.Println(s...)
	}
}

func debug(s ...interface{}) {
	if !isProduct {
		fmt.Print(s...)
	}
}
func debugf(f string, s ...interface{}) {
	if !isProduct {
		fmt.Printf(f, s...)
	}
}

var nextReader func() string

func newScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
