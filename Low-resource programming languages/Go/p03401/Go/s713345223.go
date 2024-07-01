package main

import (
	"fmt"
	"io"
	"os"
)

func abs(result int) int {
	if result < 0 {
		return -result
	}
	return result
}

func routine(r io.Reader, w io.Writer) {
	var N int
	fmt.Fscanf(r, "%d\n", &N)
	a := make([]int, N+2)
	a[0] = 0
	for i := 1; i <= N; i++ {
		fmt.Fscanf(r, "%d", &a[i])
	}
	a[N+1] = 0

	sum := 0
	for i := 1; i <= N+1; i++ {

		sum += abs(a[i-1] - a[i])
	}

	for ignoreI := 1; ignoreI <= N; ignoreI++ {
		ans := sum - abs(a[ignoreI-1]-a[ignoreI]) - abs(a[ignoreI]-a[ignoreI+1]) + abs(a[ignoreI-1]-a[ignoreI+1])
		fmt.Fprintf(w, "%v\n", ans)
	}
}

func main() {
	routine(os.Stdin, os.Stdout)
}
