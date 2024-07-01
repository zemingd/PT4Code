package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var r = bufio.NewReader(os.Stdin)
var w = bufio.NewWriter(os.Stdout)

func main() {
	defer w.Flush()

	var n int
	fmt.Fscanf(r, "%d\n", &n)
	var s string
	fmt.Fscanf(r, "%s\n", &s)

	s = strings.TrimLeft(s, ".")
	s = strings.ReplaceAll(s, "#", "")
	fmt.Fprintln(w, len(s))
}
