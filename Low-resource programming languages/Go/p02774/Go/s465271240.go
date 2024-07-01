package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string {
	sc.Scan()
	return sc.Text()
}
func scanInt() int {
	a, _ := strconv.Atoi(scanString())
	return a
}
func scanInt64() int64 {
	a, _ := strconv.ParseInt(scanString(), 10, 64)
	return a
}
func scanFloat64() float64 {
	a, _ := strconv.ParseFloat(scanString(), 64)
	return a
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1000000)

	n := scanInt()
	k := scanInt()
	s := scanInts(n)

	i := len(s) - 1
	r := make([]int, 0, n * n)
	for j := range s {
		for k := j; k < i; k++ {
			// fmt.Printf("%v * %v = %v\n", s[j], s[k+1], s[j]*s[k+1])
			r = append(r, s[j]*s[k+1])
		}
	}
	sort.Ints(r)
	fmt.Println(r[k])
}
