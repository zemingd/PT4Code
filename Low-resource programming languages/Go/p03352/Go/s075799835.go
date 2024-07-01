package main

import (
	"io"
	"os"

	"fmt"
	"math"
)

func Solve(in io.Reader, out io.Writer) {
	var x int
	fmt.Fscan(in, &x)

	fmt.Fprintln(out, int(math.Pow(
		math.Floor(
			math.Sqrt(float64(x))), 2)))

}

func main() {
	Solve(os.Stdin, os.Stdout)
}
