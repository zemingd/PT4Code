package main

import (
	"fmt"
	"math/bits"
)

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		var m int
		fmt.Scan(&m)
		for ; m > 0; m-- {
			var x, y uint
			fmt.Scan(&x, &y)
			x--
			if y == 1 {
				h[i] |= 1 << x
			} else {
				l[i] |= 1 << x
			}
		}
	}

	var ans int
	for i := 0; i < (1 << uint(n)); i++ {
		x, y := i, ^i
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 0 {
				continue
			}
			x |= h[j]
			y |= l[j]
		}
		ok := true
		for j := 0; j < n; j++ {
			if x>>uint(j)&1 == 1 && i>>uint(j)&1 == 0 {
				ok = false
			}
			if y>>uint(j)&1 == 1 && i>>uint(j)&1 == 1 {
				ok = false
			}
		}
		if ok && ans < bits.OnesCount(uint(i)) {
			ans = bits.OnesCount(uint(i))
		}
	}
	fmt.Println(ans)
}
