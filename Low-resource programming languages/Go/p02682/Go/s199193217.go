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

	var a,b,c,k int
	Fscan(in, &a, &b, &c, &k)
	ans := 0
	if k<=a {
		ans = k
		k=0
	} else {
		ans = a
		k-=a
	}

	if k<=b {

		k=0
	} else {

		k-=b
	}

	if k <= c {
		ans-=k
	} else {
		ans-=c
	}
	Fprintln(out, ans)
}

func main() { run(os.Stdin, os.Stdout) }
