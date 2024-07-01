package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, a, b := ScanInt(), ScanInt(), ScanInt()

	bCount := a * (n / (a + b))
	left := n - (a + b)*(n / (a + b))
	bCount += mn(a, left)

	P(bCount)

}

/*********************** I/O ***********************/

var in *bufio.Scanner
var P func(a ...interface{}) (n int, err error)

func init() {
	P = fmt.Println

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e+9))
	in.Split(bufio.ScanWords)

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
func ScanIntSlice(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = ScanInt()
	}
	return arr
}
func ScanInt64Slice(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i] = ScanInt64()
	}
	return arr
}
func mn(a, b int) int {
	if a < b {
		return a
	}
	return b
}
