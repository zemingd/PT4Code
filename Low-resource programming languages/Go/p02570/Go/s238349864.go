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

	var d, t, s int
	fmt.Fscan(r, &d, &t, &s)
	if s != 0 && d/s <= t {
		fmt.Fprintln(w, "Yes")
	} else {
		fmt.Fprintln(w, "No")
	}
}
