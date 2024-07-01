package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// input scanner
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

func nextInt64s(n int) []int64 {
	ret := make([]int64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt64()
	}
	return ret
}

func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

// util
func max(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n > ans {
			ans = n
		}
	}
	return ans
}

func min(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n < ans {
			ans = n
		}
	}
	return ans
}

func abs(n int64) int64 {
	if n < 0 {
		return -n
	}
	return n
}

// main
func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt64()
	a := nextInt64()
	b := nextInt64()
	if a > b {
		a, b = b, a
	}
	if (b-a)%2 == 0 {
		fmt.Println((b - a) / 2)
	} else {
		if a > n-b {
			fmt.Println((n - b) + (b-a+1)/2)
		} else {
			fmt.Println((a - 1) + (b-a+1)/2)
		}
	}
}
