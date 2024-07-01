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
	x, n := scanInt(), scanInt()
	p := scanInts(n)
	answer := nearest(x, p)
	fmt.Println(answer)
}

func debug(a ...interface{}) {
	// fmt.Println(a...)
}

func nearest(x int, p []int) int {
	if notIn(x, p) {
		return x
	}
	sort.Ints(p)
	for i := 1; ; i++ {
		if notIn(x-i, p) {
			return x - i
		}
		if notIn(x+i, p) {
			return x + i
		}
	}
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func notIn(x int, a []int) bool {
	for i := 0; i < len(a); i++ {
		if x == a[i] {
			return false
		}
	}
	return true
}
