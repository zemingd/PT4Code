package main

import (
	"bufio"
	"fmt"
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
		for x := 1; x <= 50; x++ {
			for y := 1; y <= 50; y++ {
				for z := 1; z <= 50; z++ {
					if x*x+y*y+z*z+x*y+y*z+z*x == i {
						sum++
					}
				}
			}
		}
		fmt.Fprintln(write, sum)
	}
}
