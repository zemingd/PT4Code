package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)

	var N int
	fmt.Scan(&N)
	ans := N * (N - 1) / 2
	fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
}
