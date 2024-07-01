package main

import (
	"io"
	"os"

	"fmt"
)

func Solve(in io.Reader, out io.Writer) {
	var n int
	fmt.Fscan(in, &n)

	var c int
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		for a%2 == 0 {
			a = a / 2
			c += 1
		}
	}

	fmt.Fprintln(out, c)
}

func main() {
	Solve(os.Stdin, os.Stdout)
}
