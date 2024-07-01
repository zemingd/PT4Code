package main

import (
	"bufio"
	. "fmt"
	"io"
	"os"
)

// github.com/EndlessCheng/codeforces-go
func run(_r io.Reader, _w io.Writer) {
	in := bufio.NewReader(_r)
	out := bufio.NewWriter(_w)
	defer out.Flush()

	var n int
	var s string
	Fscan(in, &n, &s)
	if len(s) <= n {
		Fprintln(out, s)
	} else {
		Fprintln(out, s[:n]+"...")
	}
}

func main() { run(os.Stdin, os.Stdout) }
