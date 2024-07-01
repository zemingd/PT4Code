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

	c := map[string]int{}
	var n int
	var s string
	for Fscan(in, &n); n > 0; n-- {
		Fscan(in, &s)
		c[s]++
	}
	for _, s := range []string{"AC", "WA", "TLE", "RE"} {
		Fprintln(out, s, "x", c[s])
	}
}

func main() { run(os.Stdin, os.Stdout) }
