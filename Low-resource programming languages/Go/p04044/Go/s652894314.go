package main

import (
	"fmt"
	"io"
	"os"
	"sort"
)

func main() {
	B(os.Stdin, os.Stdout)
}

func B(stdin io.Reader, stdout io.Writer) {
	var n int
	var l int
	var s []string

	fmt.Fscan(stdin, &n, &l)

	s = make([]string, n)

	for i := 0; i < n; i++ {
		fmt.Fscan(stdin, &s[i])
	}

	sort.Strings(s)

	for _, x := range s {
		fmt.Fprintf(stdout, x)
	}

	fmt.Fprintf(stdout, "\n")

}
