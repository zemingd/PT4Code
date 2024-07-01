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

	var h, a int
	fmt.Fscan(read, &h, &a)

	fmt.Fprintln(write, (h+a-1)/a)
}
