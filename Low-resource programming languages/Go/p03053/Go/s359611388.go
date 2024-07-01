package main

import (
	"fmt"
	"io"
	"os"
)

func isNext(a [][]int, i int, j int, h int, w int, c int) bool {
	if i > 0 && a[i-1][j] > 0 && a[i-1][j] <= c {
		return true
	}
	if j > 0 && a[i][j-1] > 0 && a[i][j-1] <= c {
		return true
	}
	if i < h-1 && a[i+1][j] > 0 && a[i+1][j] <= c {
		return true
	}
	if j < w-1 && a[i][j+1] > 0 && a[i][j+1] <= c {
		return true
	}
	return false
}

func answer(reader io.Reader, writer io.Writer) {
	var h, w int
	_, _ = fmt.Fscan(reader, &h)
	_, _ = fmt.Fscan(reader, &w)
	a := make([][]int, h)
	for i := 0; i < h; i++ {
		var s string
		_, _ = fmt.Fscan(reader, &s)
		a[i] = make([]int, w)
		for j := 0; j < w; j++ {
			if string(s[j]) == "#" {
				a[i][j] = 1
			} else {
				a[i][j] = 0
			}
		}
	}
	c := 1
	for true {
		fmt.Printf("%v\n", a)
		f := false
		for i := 0; i < h; i++ {
			for j := 0; j < w; j++ {
				if a[i][j] == 0 && isNext(a, i, j, h, w, c) == true {
					a[i][j] = c + 1
					f = true
				}
			}
		}
		if f == false {
			break
		}
		c++
	}
	_, _ = fmt.Fprintf(writer, "%d", c-1)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
