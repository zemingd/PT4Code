package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	// 100MB
	bufsize := 100 * 1024 * 1024
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, bufio.MaxScanTokenSize), bufsize)
	sc.Split(bufio.ScanWords)
}
func readInt() int              { return readIntArray(1)[0] }
func readInt2() (int, int)      { a := readIntArray(2); return a[0], a[1] }
func readInt3() (int, int, int) { a := readIntArray(3); return a[0], a[1], a[2] }
func readIntArray(n int) []int {
	s := readStringArray(n)
	a := make([]int, n)
	for i := range a {
		a[i], _ = strconv.Atoi(s[i])
	}
	return a
}
func readString() string            { return readStringArray(1)[0] }
func readString2() (string, string) { a := readStringArray(2); return a[0], a[1] }
func readStringArray(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i] = sc.Text()
	}
	return a
}
func max(ns ...int) int {
	max := ns[0]
	for _, n := range ns {
		if n > max {
			max = n
		}
	}
	return max
}
func min(ns ...int) int {
	min := ns[0]
	for _, n := range ns {
		if n < min {
			min = n
		}
	}
	return min
}
func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	A, B, M := readInt3()
	a := make([]int, A)
	amin := math.MaxInt64
	for i := 0; i < A; i++ {
		a[i] = readInt()
		if amin > a[i] {
			amin = a[i]
		}
	}
	b := make([]int, B)
	bmin := math.MaxInt64
	for i := 0; i < B; i++ {
		b[i] = readInt()
		if bmin > b[i] {
			bmin = b[i]
		}
	}
	min := math.MaxInt64
	for i := 0; i < M; i++ {
		x, y, c := readInt3()
		r := a[x-1] + b[y-1] - c
		if min > r {
			min = r
		}
	}
	if min > amin+bmin {
		min = amin + bmin
	}
	fmt.Println(min)
}
