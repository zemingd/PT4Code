package main

import (
	"fmt"
	"io"
	"os"
)

func proc(r io.Reader, w io.Writer) {
	//var n, d int
	//fmt.Fscanf(r, "%d", &n)
	//arr := make([]int, n)
	//for i := 0; i < n; i++ {
	//	fmt.Fscanf(r, "%d", &d)
	//	arr[i] = d
	//}
	var n, y int
	fmt.Fscanf(r, "%d", &n)
	fmt.Fscanf(r, "%d", &y)
	y /= 1000
	for a := n; a >= 0; a-- {
		if a*10 > y {
			continue
		}
		for b := n - a; b >= 0; b-- {
			if a*10+b*5 > y {
				continue
			}
			c := n - a - b
			if a*10+b*5+c == y {
				fmt.Fprintf(w, "%d %d %d", a, b, c)
				return
			}
		}
	}

	fmt.Fprintf(w, "-1 -1 -1")
}

func main() {
	proc(os.Stdin, os.Stdout)
}
