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
	var s string
	var k uint64
	fmt.Fscan(in, &s)
	fmt.Fscan(in, &k)

	var c1 uint64
	var n1 string
	for i := 0; i < len(s); i++ {
		if s[i] != '1' {
			c1 = uint64(i)
			n1 = string(s[i])
			break
		}
	}

	if k <= c1 {
		fmt.Fprintln(out, "1")
	} else {
		fmt.Fprintln(out, n1)
	}
}
