package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var a,b,c int
	_, _ = fmt.Fscan(reader, &a, &b, &c)
	for i:=0; i<10; i++ {
		c = a * c - b
		_, _ = fmt.Fprintf(writer, "%d", c)
		if i != 9 {
			_, _ = fmt.Fprint(writer,"\n")
		}
	}
}

func main() {
	answer(os.Stdin, os.Stdout)
}
