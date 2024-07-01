package main

import (
	"fmt"
)

func main() {
	var n, a, x, y, max uint8
	fmt.Scan(&n)

	statements := make([]statement, n)
	for i := uint8(0); i < n; i++ {
		fmt.Scan(&a)

		s := make(statement)
		for j := uint8(0); j < a; j++ {
			fmt.Scan(&x, &y)
			s[x-1] = y
		}
		statements[i] = s
	}

	for bit := uint8(0); bit < 1<<n; bit++ {
		var (
			cnt uint8
			ok  = true
		)

		for i := uint8(0); i < n; i++ {
			if bit&(1<<i) == 0 {
				continue
			}

			cnt++
			for _x, _y := range statements[i] {
				if ((bit>>_x)&1)^_y != 0 {
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

type statement map[uint8]uint8
