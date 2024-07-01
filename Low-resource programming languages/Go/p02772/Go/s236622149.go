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

	var n int
	fmt.Fscan(read, &n)

	chk := true
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(read, &a)
		if a%2 == 0 {
			chk = chk && (a%3 == 0 || a%5 == 0)
		}
	}
	if chk {
		fmt.Fprintln(write, "APPROVED")
	} else {
		fmt.Fprintln(write, "DENIED")
	}
}
