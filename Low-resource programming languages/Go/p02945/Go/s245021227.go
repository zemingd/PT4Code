package main

import (
	"fmt"
	"io"
	"os"
)

func proc(r io.Reader, w io.Writer) {
	var a, b int
	fmt.Fscanf(r, "%d %d", &a, &b)
	o := a + b
	if o < a-b {
		o = a - b
	}
	if o < a*b {
		o = a * b
	}
	//fmt.Printf("%#v", numbers)
	fmt.Fprintf(w, "%d", o)
}

func main() {
	proc(os.Stdin, os.Stdout)
}
