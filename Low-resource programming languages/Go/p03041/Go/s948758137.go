package main

import (
	"fmt"
	"io"
	"os"
	"strings"
)

func answer(reader io.Reader, writer io.Writer) {
	var a, b int
	var s string
	var r string
	_, _ = fmt.Fscan(reader, &a)
	_, _ = fmt.Fscan(reader, &b)
	_, _ = fmt.Fscan(reader, &s)
	if b > 1 {
		r = s[:b-1]
	}
	r = r + strings.ToLower(string(s[b-1]))
	if b < len(s) {
		r = r + s[b:]
	}
	_, _ = fmt.Fprintf(writer, "%s", r)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
