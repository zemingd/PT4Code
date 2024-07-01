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

	var n, k int
	Fscan(in, &n, &k)
	to := make([]int, n+1)
	for i := 1; i <= n; i++ {
		Fscan(in, &to[i])
	}

	before := []int{}
	cycle := []int{}
	vis := make([]int, n+1)
	for v := 1; vis[v]<2; v = to[v] {
		if vis[v] == 1 {
			cycle = append(cycle, v)
		} else {
			before = append(before, v)
		}

		vis[v]++
	}
	if k <len(before) {
		Fprintln(out, before[k])
	} else {
		k-=len(before)
		Fprintln(out, cycle[k%len(cycle)])

	}

}

func main() { run(os.Stdin, os.Stdout) }
