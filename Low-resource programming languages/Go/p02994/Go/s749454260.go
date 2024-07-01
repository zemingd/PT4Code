package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func chmin(a *float64, b float64) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

func chmax(a *float64, b float64) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}

func yesno(result bool) {
	if result {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}

func printansStr(result bool, a, b string) {
	if result {
		fmt.Fprintln(write, a)
	} else {
		fmt.Fprintln(write, b)
	}
}

func printansInt(result bool, a, b int) {
	if result {
		fmt.Fprintln(write, a)
	} else {
		fmt.Fprintln(write, b)
	}
}

func main() {
	defer write.Flush()

	var n, l int
	fmt.Fscan(read, &n, &l)

	sum := 0
	val := 0
	valabs := 10000000.0
	for i := 1; i <= n; i++ {
		sum += l + i - 1
		if chmin(&valabs, math.Abs(float64(l+i-1))) {
			val = l + i - 1
		}
	}
	sum -= val
	fmt.Fprintln(write, sum)
}
