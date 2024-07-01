package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	set := (N / (A + B)) * A
	if N%(A+B) > A {
		set += A
	} else {
		set += N % (A + B)
	}
	fmt.Fprintln(wtr, set)
	_ = wtr.Flush()
}
