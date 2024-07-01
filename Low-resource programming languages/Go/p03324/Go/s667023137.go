package main

import (
	"io"
	"os"

	"fmt"
)

func pow(x int, b int, n int) int {
	if n == 0 {
		return 1
	}
	if n == 1 {
		return x * b
	}
	return pow(x*b, b, n-1)
}

func Solve(in io.Reader, out io.Writer) {
	var d, n int
	fmt.Fscan(in, &d, &n)

	a := pow(1, 100, d) * n

	fmt.Fprintln(out, a)
}

func main() {
	Solve(os.Stdin, os.Stdout)
}
