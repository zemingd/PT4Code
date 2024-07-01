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

func yesno(result bool) {
	if result {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}

func main() {
	defer write.Flush()

	var a, b int
	fmt.Fscan(read, &a, &b)
	fmt.Fprintln(write, 6-a-b)
}
