package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	n := nextInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	sumA := 0
	for i := 0; i < n; i++ {
		sumA += a[i]
	}
	sum := 0
	for i := 0; i < n-1; i++ {
		sumA -= a[i]
		sum += a[i] * sumA
	}

	fmt.Fprintf(out, "%d\n", sum%((10*10*10*10*10*10*10*10*10)+7))
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func quickSort(val []int) []int {
	if len(val) < 2 {
		return val
	}

	pivot := val[0]

	left := []int{}
	right := []int{}

	for _, v := range val[1:] {
		if pivot > v {
			left = append(left, v)
		} else {
			right = append(right, v)
		}
	}

	left = quickSort(left)
	right = quickSort(right)

	ret := append(left, pivot)
	ret = append(ret, right...)

	return ret
}
