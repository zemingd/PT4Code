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

	var a, b, c int
	fmt.Fscan(read, &a, &b, &c)

	cnt := 0
	if a == b {
		cnt = cnt + 1
	}
	if a == c {
		cnt = cnt + 1
	}
	if b == c {
		cnt = cnt + 1
	}

	if cnt == 1 {
		fmt.Fprintln(write, "Yes")
	} else {
		fmt.Fprintln(write, "No")
	}
}
