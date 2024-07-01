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

	A := make([]int, n+1)
	for i := range A {
		fmt.Fscan(read, &A[i])
	}

	cnt := 0
	for i := 0; i < n; i++ {
		var b int
		fmt.Fscan(read, &b)

		for j := 0; j < 2; j++ {
			if A[i+j] > b {
				cnt += b
				A[i+j] -= b
				b = 0
			} else {
				cnt += A[i+j]
				b -= A[i+j]
				A[i+j] = 0
			}
		}
	}
	fmt.Fprintln(write, cnt)
}
