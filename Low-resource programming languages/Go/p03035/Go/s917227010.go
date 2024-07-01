package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var a, b int
	_, _ = fmt.Fscan(reader, &a)
	_, _ = fmt.Fscan(reader, &b)
	if a < 6 {
		_, _ = fmt.Fprintf(writer, "0")
	} else if a < 13 {
		_, _ = fmt.Fprintf(writer, "%d", b / 2)
	} else {
		_, _ = fmt.Fprintf(writer, "%d", b)
	}
}

func main() {
	answer(os.Stdin, os.Stdout)
}
