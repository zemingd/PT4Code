package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var n int
	_, _ = fmt.Fscan(reader, &n)
	v := make([]int, n)
	for i := 0; i < n; i++ {
		var a int
		_, _ = fmt.Fscan(reader, &a)
		v[i] = a
	}
	ret := 0
	for i := 0; i < n; i++ {
		var a int
		_, _ = fmt.Fscan(reader, &a)
		if v[i]-a > 0 {
			ret += v[i] - a
		}
	}
	_, _ = fmt.Fprintf(writer, "%d", ret)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
