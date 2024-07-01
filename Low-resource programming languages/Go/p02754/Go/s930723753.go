package main

import (
	"fmt"
	"io"
	"os"
)

func run(input io.Reader, output io.Writer) int {
	var n, a, b int
	fmt.Scanf("%d %d %d\n", &n, &a, &b)

	v := n / (a + b)
	l := n % (a + b)
	if l >= a {
		fmt.Println(v*a + a)
	} else {
		fmt.Println(v*a + l)
	}

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
