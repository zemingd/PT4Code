package main

import (
	"bufio"
	"fmt"
	"os"
)

func gcd1(a, b, c int) int {
	d := gcd2(b, c)
	if d < a {
		return gcd2(d, a)
	}
	return gcd2(a, d)
}

func gcd2(a, b int) int {
	r := b % a
	for {
		if r == 0 {
			break
		}
		a, b = r, a
		r = b % a
	}
	return a
}

func main() {
	var k int
	fmt.Scan(&k)

	solve := 0
	for i := 1; i <= k-2; i++ {
		for j := i + 1; j <= k-1; j++ {
			for l := j + 1; l <= k; l++ {
				solve += gcd1(i, j, l) * 6
			}
		}
	}

	for i := 1; i <= k-1; i++ {
		for j := i + 1; j <= k; j++ {
			solve += gcd2(i, j) * 3 * 2
		}
	}

	for i := 1; i <= k; i++ {
		solve += i
	}

	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	fmt.Fprintln(w, solve)
}
