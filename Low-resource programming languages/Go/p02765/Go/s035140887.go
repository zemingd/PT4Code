package main

import (
	"fmt"
	"io"
	"os"
)

func run(input io.Reader, output io.Writer) int {
	var n, r int
	fmt.Fscanf(input, "%d %d\n", &n, &r)

	if n < 10 {
		fmt.Println(r + (100 * (10 - n)))
	} else {
		fmt.Println(r)
	}
	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
