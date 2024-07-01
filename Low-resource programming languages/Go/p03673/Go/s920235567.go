package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	bw = bufio.NewWriter(os.Stdout)
)

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	defer bw.Flush()
	sc.Split(bufio.ScanWords)
	n := ri()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = ri()
	}
	for i := n - 1; i >= 0; i -= 2 {
		fmt.Fprint(bw, a[i], " ")
	}
	for i := n & 1; i < n-2; i += 2 {
		fmt.Fprint(bw, a[i], " ")
	}
	if n > 1 {
		fmt.Fprint(bw, a[n-2])
	}
	fmt.Fprint(bw, "\n")
}
