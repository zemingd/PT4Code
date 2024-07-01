package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	read := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var k int
	fmt.Fscan(read, &k)

	sum := 0
	for p := 1; p <= k; p++ {
		for q := 1; q <= k; q++ {
			for r := 1; r <= k; r++ {
				sum += GCD(GCD(p, q), r)
			}
		}
	}
	fmt.Fprintln(w, sum)
}

func GCD(a, b int) int {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}
