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

	var n int
	fmt.Fscan(read, &n)

	var s, t string
	fmt.Fscan(read, &s, &t)

	for i := 0; i < n; i++ {
		fmt.Print(s[i : i+1])
		fmt.Print(t[i : i+1])
	}
	fmt.Println("")
}
