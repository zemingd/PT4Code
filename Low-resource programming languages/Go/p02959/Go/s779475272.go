package main

import (
	"fmt"
	"io"
	"os"
)

func proc(r io.Reader, w io.Writer) {
	var n, d int
	fmt.Fscanf(r, "%d", &n)
	a := make([]int, n+1)
	b := make([]int, n)
	for i := 0; i < n+1; i++ {
		fmt.Fscanf(r, "%d", &d)
		a[i] = d
	}
	for i := 0; i < n; i++ {
		fmt.Fscanf(r, "%d", &d)
		b[i] = d
	}
	limit := 0
	for i := 0; i < n; i++ {
		limit += b[i]
	}
	summax := 0
	for f := 0; f <= a[0] && f <= b[0]; f++ {
		sum := 0
		prev := f
		for i := 0; i < n; i++ {
			if prev > b[i] {
				prev = b[i]
			}
			sum += prev
			cur := b[i] - prev
			if cur > a[i+1] {
				cur = a[i+1]
			}
			sum += cur
			prev = a[i+1] - cur
		}
		if sum > summax {
			summax = sum
		}
		if summax == limit {
			break
		}
	}

	fmt.Fprintf(w, "%d", summax)
}

func main() {
	proc(os.Stdin, os.Stdout)
}
