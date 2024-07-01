package main

import (
	"bufio"
	"fmt"
	"os"
)

var r = bufio.NewReader(os.Stdin)
var w = bufio.NewWriter(os.Stdout)

func main() {
	defer w.Flush()

	var s string
	fmt.Fscanf(r, "%s\n", &s)

	if s == "AAA" || s == "BBB" {
		fmt.Fprintln(w, "No")
		return
	}

	fmt.Fprintln(w, "Yes")
}
