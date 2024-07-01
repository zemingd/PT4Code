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

	var n, k int
	fmt.Fscan(read, &n, &k)

	cnt := 0
	for n > 0 {
		cnt++
		n /= k
	}
	fmt.Fprintln(write, cnt)
}
