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

	var s, t string
	fmt.Fscan(read, &s, &t)
	fmt.Fprintln(write, t+s)
}
