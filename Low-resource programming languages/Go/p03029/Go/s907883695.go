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
	var a, p int
	fmt.Fscanf(in, "%d%d", &a, &p)
	ans := (a*3 + p) / 2
	fmt.Fprintln(out, ans)
}