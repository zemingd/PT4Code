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
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	var n = 1
	var sum int
	var p = false
	for i := 0; i < N; i++ {
		n = a[n-1]
		sum++
		if n == 2 {
			p = true
			break
		}
	}
	if p {
		fmt.Fprintln(wtr, sum)
	} else {
		fmt.Fprintln(wtr, -1)
	}

	_ = wtr.Flush()
}
