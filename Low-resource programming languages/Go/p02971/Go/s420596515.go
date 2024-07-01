package main

import (
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	var n int
	_, _ = fmt.Fscanf(stdin, "%d\n", &n)

	a := make([]int, n)
	var max int
	_, _ = fmt.Fscanf(stdin, "%d\n", &max)
	second := 0

	for i := 1; i < n; i++ {
		var tmp int
		_, _ = fmt.Fscanf(stdin, "%d\n", &tmp)
		a[i] = tmp
		if tmp >= max {
			second = max
			max = tmp
		} else if tmp >= second {
			second = tmp
		}
	}

	for i := 0; i < n; i++ {
		var ans int
		if a[i] == max {
			ans = second
		} else {
			ans = max
		}
		_, _ = fmt.Fprintf(stdout, "%d\n", ans)
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
