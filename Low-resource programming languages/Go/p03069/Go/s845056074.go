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

	t := strings.TrimLeft(s, ".")
	t = strings.Replace(s, "#", "", -1)
	if len(s)-len(t) < len(t) {
		fmt.Fprintln(w, len(s)-len(t))
		return
	}
	fmt.Fprintln(w, len(t))
}
