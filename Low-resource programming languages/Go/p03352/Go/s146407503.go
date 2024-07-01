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

	rx := math.Sqrt(float64(x))
	fx := math.Floor(rx)
	px := math.Pow(fx, 2)
	fmt.Fprintln(out, int(px))
}

func main() {
	Solve(os.Stdin, os.Stdout)
}
