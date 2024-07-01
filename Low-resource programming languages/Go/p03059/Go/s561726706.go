package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var a, b, t int
	_, _ = fmt.Fscan(reader, &a)
	_, _ = fmt.Fscan(reader, &b)
	_, _ = fmt.Fscan(reader, &t)
	v := b * int((float64(t)+0.5)/float64(a))
	_, _ = fmt.Fprintf(writer, "%d", v)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
