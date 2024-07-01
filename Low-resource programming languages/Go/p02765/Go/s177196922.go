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

func main() {
	defer write.Flush()

	var n, r int
	fmt.Fscan(read, &n, &r)

	if n < 10 {
		r = r + 100*(10-n)
	}
	fmt.Fprintln(write, r)
}
