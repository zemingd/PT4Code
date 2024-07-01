package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var N, K, ans int
	fmt.Scan(&N, &K)
	p := N % K
	q := -(p - K)
	if p < q {
		ans = p
	} else {
		ans = q
	}
	fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
}
