package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e10
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextFloat() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func intSlicePrint(el interface{}) {
	fmt.Println(strings.Trim(fmt.Sprint(el), "[]"))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	s := make([]int, n)
	for i := 0; i < n; i++ {
		s[i] = nextInt()
	}
	sort.Ints(s)

	sum := 0
	for j := 0; j < k;j++ {
		sum += s[j]
	}

	fmt.Println(sum)
}

