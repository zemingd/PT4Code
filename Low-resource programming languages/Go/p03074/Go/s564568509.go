package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var n, k int
	var in string
	fmt.Fscan(reader, &n, &k)
	fmt.Fscan(reader, &in)
	a := make([]int, n)
	last := "1"
	ind := 0
	for i := 0; i < len(in); i++ {
		c := string(in[i])
		if last != c {
			ind++
			last = c
		}
		a[ind]++
	}
	sum := 0
	max := 0
	for i := 0; i < n; i++ {
		sum += a[i]
		if i > k*2 {
			sum -= a[i-k*2-1]
		}
		if i%2 == 0 && max < sum {
			max = sum
		}
	}
	_, _ = fmt.Fprintf(writer, "%d\n", max)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
