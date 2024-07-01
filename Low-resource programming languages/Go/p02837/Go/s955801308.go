package main

import (
	"fmt"
)

func main() {
	var n, max uint8
	fmt.Scan(&n)

	a := make([]uint8, 20)
	x := [20][20]uint8{}
	y := [20][20]uint8{}

	for i := uint8(1); i <= n; i++ {
		fmt.Scan(&a[i])
		for j := uint8(1); j <= a[i]; j++ {
			fmt.Scan(&x[i][j], &y[i][j])
		}
	}

	for bits := uint8(1); bits < 1<<n; bits++ {
		ok := true
		cnt := uint8(0)
		for i := uint8(1); i <= n; i++ {
			if bits&(1<<(i-1)) == 0 {
				continue
			}
			cnt++
			for j := uint8(1); j <= a[i]; j++ {
				if (bits>>(x[i][j]-1))&1 != y[i][j] {
					ok = false
				}
			}
		}

		if ok && cnt > max {
			max = cnt
		}
	}

	fmt.Println(max)
}
