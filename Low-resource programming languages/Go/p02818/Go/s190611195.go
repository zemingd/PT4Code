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

func yesno(result bool) {
	if result {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}

func max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

func min(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func main() {
	defer write.Flush()

	var a, b, k int64
	fmt.Fscan(read, &a, &b, &k)

	a, k = a-min(a, k), max(0, k-a)
	b, k = b-min(b, k), max(0, k-b)
	fmt.Fprintln(write, a, b)
}
