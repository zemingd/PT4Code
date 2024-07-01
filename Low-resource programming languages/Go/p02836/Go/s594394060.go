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

	var s string
	fmt.Fscan(read, &s)

	cnt := 0
	n := len(s)
	for i := range s {
		if s[i] != s[n-1-i] {
			cnt++
		}
	}
	fmt.Fprintln(write, cnt/2)
}
