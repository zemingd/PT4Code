package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(in io.Reader, out io.Writer) {
	var a, b int
	fmt.Fscanf(in, "%d%d", &a, &b)

	t := a * b

	if t%2 == 0 {
		fmt.Fprintln(out, "No")
	} else {
		fmt.Fprintln(out, "Yes")
	}
}
