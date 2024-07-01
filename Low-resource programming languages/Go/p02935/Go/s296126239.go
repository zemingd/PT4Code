package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

var sc = newScanner()

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

func main() {
	n := scanInt()
	v := scanInts(n)
	answer := maxValue(n, v)
	fmt.Println(answer)
}

func debug(a ...interface{}) {
	fmt.Println(a...)
}

func maxValue(n int, v []int) float64 {
	sort.Ints(v)
	value := float64(v[0])

	for i := 1; i < n; i++ {
		value += float64(v[i])
		value /= 2.0
	}
	return value
}
