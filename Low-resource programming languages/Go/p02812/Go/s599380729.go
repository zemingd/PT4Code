package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	defer write.Flush()

	var n int
	var s string
	fmt.Fscan(read, &n, &s)

	fmt.Fprintln(write, strings.Count(s, "ABC"))
}
