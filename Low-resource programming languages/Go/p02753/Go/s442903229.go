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

	var s string
	fmt.Fscan(read, &s)

	if s == "AAA" || s == "BBB" {
		fmt.Fprintln(write, "No")
	} else {
		fmt.Fprintln(write, "Yes")
	}
}
