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

	var H int
	fmt.Fscan(read, &H)
	for i := 0; i < n-1; i++ {
		var h int
		fmt.Fscan(read, &h)

		if H > h {
			fmt.Fprintln(write, "No")
			return
		}

		if H < h {
			H = h - 1
		}
	}
	fmt.Fprintln(write, "Yes")
}
