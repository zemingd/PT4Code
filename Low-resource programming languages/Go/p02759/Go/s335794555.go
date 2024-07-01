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

	var s int
	fmt.Fscan(read, &s)

	fmt.Fprintln(write, (s+1)/2)
}
