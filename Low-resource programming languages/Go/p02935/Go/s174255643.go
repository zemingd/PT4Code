package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

	a := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(read, &a[i])
	}
	sort.Float64s(a)

	ans := (a[0] + a[1]) / 2
	for i := 2; i < n; i++ {
		ans = (ans + a[i]) / 2
	}
	fmt.Fprintln(write, ans)
}
