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

	var n int
	fmt.Fscan(r, &n)
	if n/100 == 7 || (n%100)/10 == 7 || n%10 == 7 {
		fmt.Fprintln(w, "Yes")
	} else {
		fmt.Fprintln(w, "No")
	}
}
