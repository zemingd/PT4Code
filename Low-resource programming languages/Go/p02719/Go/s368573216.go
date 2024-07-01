package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func main() {
	defer write.Flush()

	var n, k int64
	fmt.Fscan(read, &n, &k)

	fmt.Fprintln(write, math.Min(float64(n%k), float64(k-n%k)))
}
