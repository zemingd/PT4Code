package main

import (
	"io"
	"os"

	"fmt"
)

func dpow(x int) int {
	if x == 0 {
		return 1
	}

	if x == 1 {
		return 100
	}

	return 10000
}

func Solve(in io.Reader, out io.Writer) {
	var d, n int
	fmt.Fscan(in, &d, &n)

	a := dpow(d) * n

	fmt.Fprintln(out, a)
}

func main() {
	Solve(os.Stdin, os.Stdout)
}
