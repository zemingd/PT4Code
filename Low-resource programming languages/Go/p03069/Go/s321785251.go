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
	d := 0
	g := 0
	for i := 0; i < len(s); i++ {
		if f == 1 && string(s[i]) == "." {
			c++
		}
		if f == 0 && string(s[i]) == "#" {
			f = 1
		}
		if g == 1 && string(s[i]) == "#" {
			d++
		}
		if g == 0 && string(s[i]) == "." {
			g = 1
		}
	}
	if c < d {
		_, _ = fmt.Fprintf(writer, "%d", c)
	} else {
		_, _ = fmt.Fprintf(writer, "%d", d)
	}
}

func main() {
	answer(os.Stdin, os.Stdout)
}
