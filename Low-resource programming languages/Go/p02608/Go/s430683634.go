package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	read := bufio.NewReader(os.Stdin)
	write := bufio.NewWriter(os.Stdout)
	defer write.Flush()
	var n int
	fmt.Fscan(read, &n)
	for i := 1; i <= n; i++ {
		sum := 0
		lim := int(math.Sqrt(float64(i))+1) / 2
		for x := 1; x <= lim; x++ {
			for y := 1; y <= lim; y++ {
				xpy := (x + y) * (x + y)
				for z := 1; z <= lim; z++ {
					ypz := (y + z) * (y + z)
					zpx := (z + x) * (z + x)
					if xpy+ypz+zpx == 2*i {
						sum++
					}
				}
			}
		}
		fmt.Fprintln(write, sum)
	}
}