package main

import (
	"fmt"
	"io"
	"os"
	"sort"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(in io.Reader, out io.Writer) {
	var n, k int
	fmt.Fscanf(in, "%d%d", &n, &k)

	h := make([]int, n)
	for i := range h {
		fmt.Fscanf(in, "%d", &h[i])
	}

	sort.Ints(h)

	ans := h[n-1] - h[0]

	for i := 0; i < n-k+1; i++ {
		d := h[i+k-1] - h[i]
		if d < ans {
			ans = d
		}
	}
	fmt.Fprintln(out, ans)
}

func abs(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func gcd(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
