package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var N int
	fmt.Scan(&N)
	ans := make([]int, 10001)
	for x := 1; x <= 100; x++ {
		for y := 1; y <= 100; y++ {
			for z := 1; z <= 100; z++ {
				tmp := x*x + y*y + z*z + x*y + y*z + z*x
				if tmp < N {
					ans[tmp]++
				}
			}
		}
	}
	w := bufio.NewWriter(os.Stdout)
	for i := 1; i <= N; i++ {
		fmt.Fprintln(w, ans[i])
	}
	w.Flush()
}
