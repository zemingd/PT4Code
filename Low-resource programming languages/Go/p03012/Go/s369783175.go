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

	w := make([]int, n)
	s1, s2 := 0, 0
	for i := 0; i < n; i++ {
		fmt.Fscan(read, &w[i])
		s2 += w[i]
	}

	ans := int(math.Abs(float64(s1 - s2)))
	for i := 0; i < n; i++ {
		s1 += w[i]
		s2 -= w[i]
		ans = min(ans, int(math.Abs(float64(s1-s2))))
	}
	fmt.Fprintln(write, ans)
}
