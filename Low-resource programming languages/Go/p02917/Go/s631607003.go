package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func min(a, b int) int {
	if a <= b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
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

	var n int
	fmt.Fscan(read, &n)

	A := make([]int, n)
	for i := 0; i < n; i++ {
		A[i] = 100000
	}
	for i := 0; i < n-1; i++ {
		var b int
		fmt.Fscan(read, &b)
		if A[i] > b {
			A[i] = b
		}
		if A[i+1] > b {
			A[i+1] = b
		}
	}
	sum := 0
	for i := 0; i < n; i++ {
		sum += A[i]
	}
	fmt.Fprintln(write, sum)
}
