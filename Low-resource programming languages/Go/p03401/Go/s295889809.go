package main

import (
	"fmt"
	"io"
	"math"
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

		sum := 0.0
		currentX := 0
		for i := 0; i < N; i++ {
			if i == ignoreI {
				continue
			}
			sum += math.Abs(float64(currentX - a[i]))
			// fmt.Fprintf(w, "xx %v\n", sum)
			currentX = a[i]
		}
		sum += math.Abs(float64(currentX - 0))
		fmt.Fprintf(w, "%v\n", sum)
	}

}

func main() {
	routine(os.Stdin, os.Stdout)
}
