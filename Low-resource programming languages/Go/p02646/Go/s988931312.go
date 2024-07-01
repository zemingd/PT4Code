package main

import (
	"bufio"
	"fmt"
	"os"
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
	a, v := scanInt(), scanInt()
	b, w := scanInt(), scanInt()
	t := scanInt()
	answer := isReachable(a, v, b, w, t)
	fmt.Println(answer)
}

const NO = "NO"
const YES = "YES"

func isReachable(a, v, b, w, t int) string {
	if v <= w {
		return NO
	}
	posDiff := abs(a - b)
	mvDiff := v - w
	if posDiff%mvDiff == 0 && posDiff/mvDiff <= t {
		return YES
	} else if posDiff/mvDiff+1 <= t {
		return YES
	}
	return NO
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func debug(a ...interface{}) {
	fmt.Println(a...)
}
