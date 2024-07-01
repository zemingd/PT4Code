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

	var b string
	fmt.Fscanf(r, "%s\n", &b)

	switch b {
	case "A":
		fmt.Fprintf(w, "%s\n", "T")
	case "T":
		fmt.Fprintf(w, "%s\n", "A")
	case "G":
		fmt.Fprintf(w, "%s\n", "C")
	case "C":
		fmt.Fprintf(w, "%s\n", "G")
	}
}