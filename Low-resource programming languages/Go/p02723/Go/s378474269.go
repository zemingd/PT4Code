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

	if s[2] == s[3] && s[4] == s[5] {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}
