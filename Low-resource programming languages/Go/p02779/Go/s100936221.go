package main

import (
	"bufio"
	. "fmt"
	"io"
	"os"
)

func run(_r io.Reader, _w io.Writer) {
	in := bufio.NewReader(_r)
	out := bufio.NewWriter(_w)
	defer out.Flush()

	var n, v int32
	Fscan(in, &n)
	mp := map[int32]int32{}
	for i := int32(0); i < n; i++ {
		Fscan(in, &v)
		mp[v]++
	}
	Fprintln(out, map[bool]string{true: "YES", false: "NO"} [int32(len(mp)) == n])
}

func main() { run(os.Stdin, os.Stdout) }
