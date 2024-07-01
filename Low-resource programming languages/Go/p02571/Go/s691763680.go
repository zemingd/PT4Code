package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var s, t string
	fmt.Fscan(r, &s, &t)

	min := len(t)

	for i := 0; i < len(s)-len(t); i++ {
		diff := 0
		for j := 0; j < len(t); j++ {
			if s[i+j] != t[j] {
				diff++
			}
		}

		if diff < min {
			min = diff
		}
	}

	fmt.Fprintln(w, min)

}
