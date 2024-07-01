package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scan(&s)

	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	for i := 0; i < len(s); i++ {
		if s[i] == '?' {
			fmt.Fprintf(w, "%c", 'D')
		} else {
			fmt.Fprintf(w, "%c", s[i])
		}
	}
	fmt.Fprintln(w)
}
