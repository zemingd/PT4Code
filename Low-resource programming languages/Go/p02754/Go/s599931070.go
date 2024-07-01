package main

import (
	"bufio"
	"fmt"
	"os"
)

var r = bufio.NewReader(os.Stdin)
var w = bufio.NewWriter(os.Stdout)

func main() {
	defer w.Flush()

	var n, a, b int
	fmt.Fscanf(r, "%d %d %d\n", &n, &a, &b)

	if a == 0 {
		fmt.Fprintln(w, 0)
		return
	}

	div := n / (a + b)
	rem := n % (a + b)
	fmt.Fprintln(w, div*a+(rem-b))
}
