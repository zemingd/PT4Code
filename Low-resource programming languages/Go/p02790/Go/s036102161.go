package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	defer write.Flush()

	var a, b int
	fmt.Fscan(read, &a, &b)

	if a > b {
		a, b = b, a
	}

	v := 0
	for i := 0; i < b; i++ {
		v *= 10
		v += a
	}
	fmt.Fprintln(write, v)
}
