package main

import (
	"fmt"
	"io"
	"os"
)

func run(input io.Reader, output io.Writer) int {
	var n int
	fmt.Scanf("%d\n", &n)

	if n%2 == 0 {
		fmt.Println(n / 2)
	} else {
		fmt.Println(n/2 + 1)
	}

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
