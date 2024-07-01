package main

import (
	"fmt"
	"io"
	"os"
)

func proc(r io.Reader, w io.Writer) {
	var k, x int
	fmt.Fscanf(r, "%d %d", &k, &x)
	min := x - k + 1
	max := min + k*2 - 2
	//fmt.Printf("%#v", numbers)
	for i := min; i < max; i++ {
		fmt.Fprintf(w, "%d ", i)
	}
	fmt.Fprintf(w, "%d ", max)
}

func main() {
	proc(os.Stdin, os.Stdout)
}
