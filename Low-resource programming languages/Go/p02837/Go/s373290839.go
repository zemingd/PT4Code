package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	read  = bufio.NewReader(os.Stdin)
	write = bufio.NewWriter(os.Stdout)
)

func main() {
	defer write.Flush()

	var n int
	fmt.Fscan(read, &n)

	A := make([]int, n)
	B := make([]int, n)
	C := make([]int, n)
	for i := range A {
		fmt.Fscan(read, &A[i])
		b, c := 0, 0
		for j := 0; j < A[i]; j++ {
			var x, y uint
			fmt.Fscan(read, &x, &y)
			if y == 1 {
				b |= 1 << (x - 1)
			} else {
				c |= 1 << (x - 1)
			}
		}
		B[i] = b
		C[i] = c
	}

	ans := 0
	for mask := 0; mask < (1 << uint(n)); mask++ {
		chk := true
		for i := 0; i < n; i++ {
			if (mask>>uint(i))&1 == 0 {
				continue
			}
			if mask&B[i] != B[i] || mask&C[i] != 0 {
				chk = false
			}
		}
		if chk {
			cnt := 0
			tmp := mask
			for tmp > 0 {
				if tmp&1 == 1 {
					cnt++
				}
				tmp = tmp >> 1
			}
			if cnt > ans {
				ans = cnt
			}
		}
	}
	fmt.Fprintln(write, ans)
}
