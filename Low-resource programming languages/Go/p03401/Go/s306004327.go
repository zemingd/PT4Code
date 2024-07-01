package main

import (
	"fmt"
	"io"
	"os"
)

func routine(r io.Reader, w io.Writer) {
	var N int
	fmt.Fscanf(r, "%d\n", &N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Fscanf(r, "%d", &a[i])
	}

	for ignoreI := 0; ignoreI < N; ignoreI++ {

		sum := 0
		currentX := 0
		for i := 0; i < N; i++ {
			if i == ignoreI {
				continue
			}

			result := currentX - a[i]
			if result < 0 {
				result = -1 * result
			}
			sum += result
			// fmt.Fprintf(w, "xx %v\n", sum)
			currentX = a[i]
		}
		result := currentX
		if result < 0 {
			result = -1 * result
		}
		sum += result
		fmt.Fprintf(w, "%v\n", sum)
	}

}

func main() {
	routine(os.Stdin, os.Stdout)
}
