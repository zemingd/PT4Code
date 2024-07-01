package main

import (
	"fmt"
	"io"
	"os"
)

func run(input io.Reader, output io.Writer) int {
	var n, k int
	fmt.Fscanf(input, "%d %d\n", &n, &k)

	cnt := 1
	for {
		if n < k {
			break
		}
		cnt++
		n = n / k
	}

	fmt.Println(cnt)

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
