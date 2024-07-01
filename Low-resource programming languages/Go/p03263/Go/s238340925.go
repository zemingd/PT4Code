package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(in io.Reader, out io.Writer) {
	var h, w int
	fmt.Fscanf(in, "%d%d", &h, &w)

	a := make([][]int, h)

	for i := range a {
		a[i] = make([]int, w)
		for j := range a[i] {
			fmt.Fscanf(in, "%d", &a[i][j])
		}
	}

	ans := []string{}

	for i := 0; i < h-1; i++ {
		for j := range a[i] {
			if a[i][j]%2 == 1 {
				a[i][j]--
				a[i+1][j]++
				s := fmt.Sprint(i+1, j+1, i+2, j+1)
				ans = append(ans, s)
			}
		}
	}

	i := h - 1
	for j := 0; j < w-1; j++ {
		if a[i][j]%2 == 1 {
			a[i][j]--
			a[i][j+1]++
			s := fmt.Sprint(i+1, j+1, i+1, j+2)
			ans = append(ans, s)
		}
	}

	fmt.Fprintln(out, len(ans))
	for i := range ans {
		fmt.Fprintln(out, ans[i])
	}
}
