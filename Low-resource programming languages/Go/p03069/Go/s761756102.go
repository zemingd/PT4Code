package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var n int
	var s string
	_, _ = fmt.Fscan(reader, &n)
	_, _ = fmt.Fscan(reader, &s)
	c := 0
	f := 0
	for i := 0; i < len(s); i++ {
		if f == 1 && string(s[i]) == "." {
			c++
		}
		if f == 0 && string(s[i]) == "#" {
			f = 1
		}
	}
	_, _ = fmt.Fprintf(writer, "%d", c)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
