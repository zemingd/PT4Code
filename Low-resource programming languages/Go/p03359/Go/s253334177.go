package main

import (
	"io"
	"os"

	"fmt"
)

func Solve(in io.Reader, out io.Writer) {
	var a, b int
	fmt.Fscan(in, &a, &b)

	if a > b {
		fmt.Fprintln(out, a-1)
	} else {
		fmt.Fprintln(out, a)
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
}
