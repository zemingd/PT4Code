package main

import (
	"fmt"
	"io"
	"os"
)

func solve(w io.Writer, r io.Reader) {
	var N, K int
	var S []byte
	fmt.Scan(&N, &K, &S)
	S[K-1] += 32
	fmt.Fprintln(w, string(S))
}

func main() {
	solve(os.Stdout, os.Stdin)
}